.class public Lcom/sec/sve/IImsMediaEventListener$Default;
.super Ljava/lang/Object;
.source "IImsMediaEventListener.java"

# interfaces
.implements Lcom/sec/sve/IImsMediaEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sve/IImsMediaEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAudioInjectionEnded(JJ)V
    .locals 0
    .param p1, "startTime"    # J
    .param p3, "stopTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public onAudioRtpRtcpTimeout(II)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method

.method public onDtmfEvent(II)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "dtmfKey"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public onRecordEvent(II)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "errCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public onRecordingStopped(JJLjava/lang/String;)V
    .locals 0
    .param p1, "startTime"    # J
    .param p3, "stopTime"    # J
    .param p5, "recordingFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public onRtpLossRate(IIFF)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "interval"    # I
    .param p3, "lossrate"    # F
    .param p4, "jitter"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public onRtpStats(IIIIII)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "lossData"    # I
    .param p3, "delay"    # I
    .param p4, "jitter"    # I
    .param p5, "measuredPeriod"    # I
    .param p6, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public onTextReceive(IILjava/lang/String;II)V
    .locals 0
    .param p1, "ch"    # I
    .param p2, "sessionId"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "length"    # I
    .param p5, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public onTextRtpRtcpTimeout(II)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public onVideoEvent(IIIII)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "event"    # I
    .param p3, "sessionId"    # I
    .param p4, "arg1"    # I
    .param p5, "arg2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
