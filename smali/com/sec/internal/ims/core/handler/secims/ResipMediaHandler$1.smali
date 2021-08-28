.class Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;
.super Lcom/sec/sve/IImsMediaEventListener$Stub;
.source "ResipMediaHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    .line 101
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-direct {p0}, Lcom/sec/sve/IImsMediaEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioInjectionEnded(JJ)V
    .locals 0
    .param p1, "startTime"    # J
    .param p3, "stopTime"    # J

    .line 295
    return-void
.end method

.method public onAudioRtpRtcpTimeout(II)V
    .locals 3
    .param p1, "channel"    # I
    .param p2, "event"    # I

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$000(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioRtpRtcpTimeout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 106
    .local v0, "me":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setChannelId(I)V

    .line 107
    div-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setPhoneId(I)V

    .line 108
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setAudioEvent(I)V

    .line 110
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$100(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public onDtmfEvent(II)V
    .locals 3
    .param p1, "channel"    # I
    .param p2, "dtmfKey"    # I

    .line 273
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$1200(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDtmfEvent dtmfKey : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 275
    .local v0, "me":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setDtmfEvent(I)V

    .line 276
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setDtmfKey(I)V

    .line 277
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$1300(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 278
    return-void
.end method

.method public onRecordEvent(II)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "errCode"    # I

    .line 282
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$1400(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordEvent errCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 284
    .local v0, "me":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 285
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 286
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_STOP_NO_SPACE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 287
    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 288
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 290
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$1500(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 291
    return-void
.end method

.method public onRecordingStopped(JJLjava/lang/String;)V
    .locals 0
    .param p1, "startTime"    # J
    .param p3, "stopTime"    # J
    .param p5, "recordingFilePath"    # Ljava/lang/String;

    .line 300
    return-void
.end method

.method public onRtpLossRate(IIFF)V
    .locals 3
    .param p1, "channel"    # I
    .param p2, "interval"    # I
    .param p3, "lossRate"    # F
    .param p4, "jitter"    # F

    .line 115
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 116
    .local v0, "me":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setChannelId(I)V

    .line 117
    div-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setPhoneId(I)V

    .line 118
    const/16 v1, 0x4e

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setAudioEvent(I)V

    .line 120
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p3, p4, v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;-><init>(IFFI)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setRtpLossRate(Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;)V

    .line 122
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$200(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public onRtpStats(IIIIII)V
    .locals 9
    .param p1, "channel"    # I
    .param p2, "lossData"    # I
    .param p3, "delay"    # I
    .param p4, "jitter"    # I
    .param p5, "measuredPeriod"    # I
    .param p6, "direction"    # I

    .line 127
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 128
    .local v0, "me":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setChannelId(I)V

    .line 129
    div-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setPhoneId(I)V

    .line 130
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setAudioEvent(I)V

    .line 132
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

    move-object v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;-><init>(IIIIII)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setAudioRtpStats(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V

    .line 134
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$300(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public onTextReceive(IILjava/lang/String;II)V
    .locals 3
    .param p1, "channel"    # I
    .param p2, "sessionId"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "length"    # I
    .param p5, "event"    # I

    .line 248
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$800(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTextReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 250
    .local v0, "me":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    invoke-virtual {v0, p5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setTextEvent(I)V

    .line 251
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setChannelId(I)V

    .line 252
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 253
    div-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setPhoneId(I)V

    .line 254
    invoke-virtual {v0, p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setRttText(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0, p4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setRttTextLen(I)V

    .line 257
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$900(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method public onTextRtpRtcpTimeout(II)V
    .locals 3
    .param p1, "channel"    # I
    .param p2, "event"    # I

    .line 262
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$1000(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTextRtpRtcpTimeout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 264
    .local v0, "me":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setTextEvent(I)V

    .line 265
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setChannelId(I)V

    .line 266
    div-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setPhoneId(I)V

    .line 268
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$1100(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 269
    return-void
.end method

.method public onVideoEvent(IIIII)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "event"    # I
    .param p3, "sessionId"    # I
    .param p4, "arg1"    # I
    .param p5, "arg2"    # I

    .line 139
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$400(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " session id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$500(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid Video Event"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    const/16 v0, 0x3ef

    if-lt p3, v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$600(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignore PTT Video Event in legacy VoLTE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void

    .line 152
    :cond_1
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 153
    .local v0, "me":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    invoke-virtual {v0, p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 155
    const/16 v1, 0x75

    if-eq p2, v1, :cond_2

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    goto/16 :goto_0

    .line 240
    :pswitch_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_INFO_CHANGE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 237
    :pswitch_1
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_STOP_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 238
    goto/16 :goto_0

    .line 234
    :pswitch_2
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 235
    goto/16 :goto_0

    .line 231
    :pswitch_3
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_START_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 232
    goto/16 :goto_0

    .line 228
    :pswitch_4
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 229
    goto/16 :goto_0

    .line 189
    :pswitch_5
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_MAX_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 190
    goto/16 :goto_0

    .line 186
    :pswitch_6
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_VERYPOOR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 187
    goto/16 :goto_0

    .line 183
    :pswitch_7
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_GOOD_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 184
    goto/16 :goto_0

    .line 180
    :pswitch_8
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_FAIR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 181
    goto/16 :goto_0

    .line 177
    :pswitch_9
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_POOR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 178
    goto/16 :goto_0

    .line 167
    :pswitch_a
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_RTCP_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 168
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setVideoEvent(I)V

    .line 169
    goto :goto_0

    .line 163
    :pswitch_b
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_RTP_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 164
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setVideoEvent(I)V

    .line 165
    goto :goto_0

    .line 224
    :pswitch_c
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_DISABLED_ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 225
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setVideoEvent(I)V

    .line 226
    goto :goto_0

    .line 219
    :pswitch_d
    invoke-virtual {v0, p4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setWidth(I)V

    .line 220
    invoke-virtual {v0, p5}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setHeight(I)V

    .line 221
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CHANGE_PEER_DIMENSION:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 222
    goto :goto_0

    .line 211
    :pswitch_e
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->NO_FAR_FRAME:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 212
    goto :goto_0

    .line 174
    :pswitch_f
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_SWITCH_FAIL:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 175
    goto :goto_0

    .line 171
    :pswitch_10
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_SWITCH_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 172
    goto :goto_0

    .line 198
    :pswitch_11
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 199
    goto :goto_0

    .line 157
    :pswitch_12
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_FIRST_FRAME_READY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 158
    goto :goto_0

    .line 192
    :pswitch_13
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_START_FAIL:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 193
    goto :goto_0

    .line 195
    :pswitch_14
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 196
    goto :goto_0

    .line 160
    :pswitch_15
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_AVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 161
    goto :goto_0

    .line 208
    :pswitch_16
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAPTURE_FAILED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 209
    goto :goto_0

    .line 203
    :pswitch_17
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAPTURE_SUCCEEDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 204
    goto :goto_0

    .line 216
    :cond_2
    :pswitch_18
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setVideoEvent(I)V

    .line 217
    nop

    .line 243
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$700(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 244
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_17
        :pswitch_16
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_b
        :pswitch_a
        :pswitch_18
        :pswitch_18
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1e
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x46
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
