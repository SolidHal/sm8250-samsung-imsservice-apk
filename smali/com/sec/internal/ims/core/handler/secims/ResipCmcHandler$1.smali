.class Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$1;
.super Lcom/sec/sve/ICmcMediaEventListener$Stub;
.source "ResipCmcHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    .line 51
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    invoke-direct {p0}, Lcom/sec/sve/ICmcMediaEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCmcRecordEvent(III)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "event"    # I
    .param p3, "arg"    # I

    .line 107
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->access$800(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCmcRecordEvent sessionId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " arg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 109
    .local v0, "me":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 110
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setCmcRecordingEvent(I)V

    .line 111
    invoke-virtual {v0, p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setCmcRecordingArg(I)V

    .line 113
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->access$900(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Lcom/sec/internal/helper/RegistrantList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public onCmcRecorderStoppedEvent(IILjava/lang/String;)V
    .locals 3
    .param p1, "startTime"    # I
    .param p2, "stopTime"    # I
    .param p3, "filePath"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->access$1000(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCmcRecorderStoppedEvent startTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , stopTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method public onRelayChannelEvent(II)V
    .locals 3
    .param p1, "channelId"    # I
    .param p2, "event"    # I

    .line 97
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->access$600(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRelayChannelEvent channelId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 99
    .local v0, "me":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setRelayChannelEvent(I)V

    .line 100
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setRelayChannelId(I)V

    .line 102
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->access$700(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Lcom/sec/internal/helper/RegistrantList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public onRelayEvent(II)V
    .locals 3
    .param p1, "streamId"    # I
    .param p2, "event"    # I

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->access$000(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRelayEvent streamId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    if-gtz p2, :cond_0

    .line 57
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->access$100(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid Relay Event"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->access$200(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRelayEvent(II)V

    .line 69
    :goto_0
    return-void
.end method

.method public onRelayRtpStats(IIIIIII)V
    .locals 11
    .param p1, "streamId"    # I
    .param p2, "sessionId"    # I
    .param p3, "lossData"    # I
    .param p4, "delay"    # I
    .param p5, "jitter"    # I
    .param p6, "measuredPeriod"    # I
    .param p7, "direction"    # I

    .line 85
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 86
    .local v0, "me":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setRelayStreamEvent(I)V

    .line 87
    move v1, p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setStreamId(I)V

    .line 88
    move v9, p2

    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 90
    new-instance v10, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;

    move-object v2, v10

    move v3, p1

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;-><init>(IIIIII)V

    invoke-virtual {v0, v10}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setRelayRtpStats(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V

    .line 92
    move-object v2, p0

    iget-object v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->access$500(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Lcom/sec/internal/helper/RegistrantList;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public onRelayStreamEvent(III)V
    .locals 3
    .param p1, "streamId"    # I
    .param p2, "event"    # I
    .param p3, "sessionId"    # I

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->access$300(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRelayStreamEvent streamId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Session Id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 76
    .local v0, "me":Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setRelayStreamEvent(I)V

    .line 77
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setStreamId(I)V

    .line 78
    invoke-virtual {v0, p3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 80
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->access$400(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Lcom/sec/internal/helper/RegistrantList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 81
    return-void
.end method
