.class Lcom/sec/internal/ims/core/RegistrationManagerHandler$9;
.super Ljava/lang/Object;
.source "RegistrationManagerHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/RegistrationManagerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    .line 437
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$9;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;I)V
    .locals 3
    .param p1, "location"    # Landroid/telephony/CellLocation;
    .param p2, "phoneId"    # I

    .line 452
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$9;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x18

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 453
    return-void
.end method

.method public onDataConnectionStateChanged(IZI)V
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "isWifiConnected"    # Z
    .param p3, "phoneId"    # I

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataConnectionStateChanged(): networkType ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], isWifiConnected ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 442
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 443
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "networkType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 444
    const-string v1, "isWifiConnected"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 445
    const-string/jumbo v1, "phoneId"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 447
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$9;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 448
    return-void
.end method

.method public onDefaultNetworkStateChanged(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 490
    const-string v0, "RegiMgr-Handler"

    const-string v1, "onDefaultNetworkStateChanged: EVENT_TRY_REGISTER delayed"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$9;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2c2

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 492
    return-void
.end method

.method public onEpdgConnected(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 457
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$9;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x1a

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 458
    return-void
.end method

.method public onEpdgDeregisterRequested(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 478
    const-string v0, "RegiMgr-Handler"

    const-string v1, "onEpdgDeregister: epdg deregister requested"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$9;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x7c

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 480
    return-void
.end method

.method public onEpdgDisconnected(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 462
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$9;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x1b

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 463
    return-void
.end method

.method public onEpdgIpsecDisconnected(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 473
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$9;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x36

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 474
    return-void
.end method

.method public onEpdgRegisterRequested(IZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "cdmaAvailability"    # Z

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEpdgRegister: cdmaAvailability : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$9;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 486
    return-void
.end method

.method public onIKEAuthFAilure(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 467
    const-string v0, "RegiMgr-Handler"

    const-string v1, "onIKEAuthFAilure:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$9;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x34

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 469
    return-void
.end method

.method public onPreciseDataConnectionStateChanged(ILandroid/telephony/PreciseDataConnectionState;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "state"    # Landroid/telephony/PreciseDataConnectionState;

    .line 496
    const-string v0, "RegiMgr-Handler"

    const-string v1, "onPreciseDataConnectionStateChanged"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 497
    new-instance v0, Lcom/sec/internal/helper/os/PreciseDataConnectionStateWrapper;

    invoke-direct {v0, p2}, Lcom/sec/internal/helper/os/PreciseDataConnectionStateWrapper;-><init>(Landroid/telephony/PreciseDataConnectionState;)V

    .line 498
    .local v0, "stateWrapper":Lcom/sec/internal/helper/os/PreciseDataConnectionStateWrapper;
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/PreciseDataConnectionStateWrapper;->getDataConnectionFailCause()I

    move-result v1

    if-eqz v1, :cond_1

    .line 499
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/PreciseDataConnectionStateWrapper;->getDataConnectionApnTypeBitMask()I

    move-result v1

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 502
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$9;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v2, 0x81

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/PreciseDataConnectionStateWrapper;->getDataConnectionFailCause()I

    move-result v3

    invoke-virtual {v1, v2, p1, v3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 503
    return-void

    .line 500
    :cond_1
    :goto_0
    return-void
.end method
