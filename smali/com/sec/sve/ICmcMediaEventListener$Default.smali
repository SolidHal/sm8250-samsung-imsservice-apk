.class public Lcom/sec/sve/ICmcMediaEventListener$Default;
.super Ljava/lang/Object;
.source "ICmcMediaEventListener.java"

# interfaces
.implements Lcom/sec/sve/ICmcMediaEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sve/ICmcMediaEventListener;
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

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCmcRecordEvent(III)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "event"    # I
    .param p3, "arg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public onCmcRecorderStoppedEvent(IILjava/lang/String;)V
    .locals 0
    .param p1, "startTime"    # I
    .param p2, "stopTime"    # I
    .param p3, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public onRelayChannelEvent(II)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public onRelayEvent(II)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method

.method public onRelayRtpStats(IIIIIII)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "sessionId"    # I
    .param p3, "lossData"    # I
    .param p4, "delay"    # I
    .param p5, "jitter"    # I
    .param p6, "measuredPeriod"    # I
    .param p7, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public onRelayStreamEvent(III)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "event"    # I
    .param p3, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method
