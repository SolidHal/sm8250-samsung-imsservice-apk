.class Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;
.super Ljava/lang/Object;
.source "TmoEcholocateIntentBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EchoSignallingData"
.end annotation


# instance fields
.field private networkBand:Ljava/lang/String;

.field private networkSignal:Ljava/lang/String;

.field private networkType:Ljava/lang/String;

.field private signalMsg:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;

.field private time:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "signalMsg"    # Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;
    .param p2, "networkBand"    # Ljava/lang/String;
    .param p3, "networkSignal"    # Ljava/lang/String;
    .param p4, "networkType"    # Ljava/lang/String;
    .param p5, "time"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->signalMsg:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;

    .line 79
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->networkBand:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->networkSignal:Ljava/lang/String;

    .line 81
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->networkType:Ljava/lang/String;

    .line 82
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->time:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public getNetworkBand()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->networkBand:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkSignal()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->networkSignal:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public getSignalMsg()Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->signalMsg:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$EchoSignallingData;->time:Ljava/lang/String;

    return-object v0
.end method
