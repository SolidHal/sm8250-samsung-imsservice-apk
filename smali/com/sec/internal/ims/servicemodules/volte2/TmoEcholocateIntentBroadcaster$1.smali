.class Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$1;
.super Landroid/telephony/PhoneStateListener;
.source "TmoEcholocateIntentBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

    .line 64
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 67
    if-eqz p1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;

    new-instance v1, Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    invoke-direct {v1, p1}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;->access$002(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateIntentBroadcaster;Lcom/sec/internal/helper/os/SignalStrengthWrapper;)Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    goto :goto_0

    .line 70
    :cond_0
    const-string v0, "EcholocateBroadcaster"

    const-string v1, "getLteSignalStrength is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    return-void
.end method
