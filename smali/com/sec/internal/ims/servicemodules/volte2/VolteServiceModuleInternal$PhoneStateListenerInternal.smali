.class Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;
.super Landroid/telephony/PhoneStateListener;
.source "VolteServiceModuleInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneStateListenerInternal"
.end annotation


# instance fields
.field mPhoneId:I

.field mState:I

.field mSubId:I

.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;II)V
    .locals 0
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .line 1650
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 1651
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mSubId:I

    .line 1652
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    .line 1653
    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mState:I

    .line 1654
    return-void
.end method


# virtual methods
.method public getInternalPhoneId()I
    .locals 1

    .line 1657
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    return v0
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 1695
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mState:I

    if-eq v0, p1, :cond_0

    .line 1696
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged: state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mState:I

    .line 1698
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    const/4 v1, 0x5

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->sendMessage(Landroid/os/Message;)Z

    .line 1700
    :cond_0
    return-void
.end method

.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 6
    .param p1, "state"    # Landroid/telephony/PreciseDataConnectionState;

    .line 1710
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreciseDataConnectionStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    if-eqz p1, :cond_0

    .line 1712
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionState()I

    move-result v0

    .line 1713
    .local v0, "dataState":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1714
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionFailCause()I

    move-result v1

    .line 1715
    .local v1, "failCause":I
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionApnTypeBitMask()I

    move-result v2

    const/16 v3, 0x200

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    if-eqz v1, :cond_0

    .line 1717
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    const-string v3, "ePDN setup failed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    const/16 v3, 0x13

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->sendMessage(Landroid/os/Message;)Z

    .line 1722
    .end local v0    # "dataState":I
    .end local v1    # "failCause":I
    :cond_0
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 8
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .line 1667
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    new-instance v0, Lcom/sec/internal/helper/os/ServiceStateWrapper;

    invoke-direct {v0, p1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;-><init>(Landroid/telephony/ServiceState;)V

    .line 1669
    .local v0, "serviceState":Lcom/sec/internal/helper/os/ServiceStateWrapper;
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 1670
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v2, :cond_0

    .line 1671
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    invoke-interface {v2, v6}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1672
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRegState()I

    move-result v2

    if-nez v2, :cond_2

    .line 1673
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRegState()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 1674
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceNetworkType()I

    move-result v2

    const/16 v6, 0x10

    if-ne v2, v6, :cond_2

    .line 1675
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataNetworkType()I

    move-result v2

    if-nez v2, :cond_2

    .line 1676
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    invoke-virtual {v2, v3, v6, v4}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1678
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isTw()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1679
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    invoke-interface {v2, v6}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1680
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRegState()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 1681
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRegState()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 1682
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataNetworkType()I

    move-result v2

    if-nez v2, :cond_2

    .line 1683
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    invoke-virtual {v2, v3, v6, v4}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->sendMessage(Landroid/os/Message;)Z

    .line 1686
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsLteEpsOnlyAttached:[Z

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    .line 1687
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRegState()I

    move-result v6

    if-nez v6, :cond_3

    .line 1688
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataNetworkType()I

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_3

    .line 1689
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->isPsOnlyReg()Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v5

    goto :goto_1

    :cond_3
    nop

    :goto_1
    aput-boolean v4, v2, v3

    .line 1690
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsLteEpsOnlyAttached("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mIsLteEpsOnlyAttached:[Z

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    aget-boolean v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 1662
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->mMobileCareController:Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/MobileCareController;->onSignalStrengthsChanged(ILandroid/telephony/SignalStrength;)V

    .line 1663
    return-void
.end method

.method public onSrvccStateChanged(I)V
    .locals 5
    .param p1, "srvccState"    # I

    .line 1704
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSrvccStateChanged: state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$PhoneStateListenerInternal;->mPhoneId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->sendMessage(Landroid/os/Message;)Z

    .line 1706
    return-void
.end method
