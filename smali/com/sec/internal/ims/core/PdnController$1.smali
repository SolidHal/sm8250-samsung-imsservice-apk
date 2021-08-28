.class Lcom/sec/internal/ims/core/PdnController$1;
.super Lcom/sec/ims/ImsManager$EpdgListener;
.source "PdnController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/core/PdnController;->makeEpdgHandoverListener()Lcom/sec/ims/ImsManager$EpdgListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/PdnController;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/PdnController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/PdnController;

    .line 150
    iput-object p1, p0, Lcom/sec/internal/ims/core/PdnController$1;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-direct {p0}, Lcom/sec/ims/ImsManager$EpdgListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpdgAvailable(III)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "isAvailable"    # I
    .param p3, "wifiState"    # I

    .line 153
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController$1;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    .line 154
    .local v0, "ns":Lcom/sec/internal/constants/ims/os/NetworkState;
    if-nez v0, :cond_0

    .line 155
    return-void

    .line 157
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 158
    .local v3, "mIsAvailable":Z
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/core/PdnController;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onEpdgAvailable :  isAvailable : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " wifiState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 160
    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgAvailable(Z)V

    .line 161
    iget-object v4, p0, Lcom/sec/internal/ims/core/PdnController$1;->this$0:Lcom/sec/internal/ims/core/PdnController;

    if-nez v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v4, p1, v1}, Lcom/sec/internal/ims/core/PdnController;->setPendedEPDGWeakSignal(IZ)V

    .line 163
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController$1;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-static {v1}, Lcom/sec/internal/ims/core/PdnController;->access$100(Lcom/sec/internal/ims/core/PdnController;)Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v1

    .line 164
    .local v1, "geolocationCon":Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    if-eqz v1, :cond_3

    .line 165
    invoke-interface {v1, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->notifyEpdgAvailable(II)V

    .line 169
    :cond_3
    return-void
.end method

.method public onEpdgDeregister(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 187
    invoke-static {}, Lcom/sec/internal/ims/core/PdnController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEpdgDeregister"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController$1;->this$0:Lcom/sec/internal/ims/core/PdnController;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/core/PdnController;->setPendedEPDGWeakSignal(IZ)V

    .line 189
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController$1;->this$0:Lcom/sec/internal/ims/core/PdnController;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/sec/internal/ims/core/PdnController;->access$200(Lcom/sec/internal/ims/core/PdnController;IZZ)V

    .line 191
    return-void
.end method

.method public onEpdgHandoverResult(IIILjava/lang/String;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "isL2WHandover"    # I
    .param p3, "result"    # I
    .param p4, "apnType"    # Ljava/lang/String;

    .line 173
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 174
    .local v2, "mResult":Z
    :goto_0
    if-ne p2, v1, :cond_1

    const-string v1, "LTE_TO_WLAN"

    goto :goto_1

    :cond_1
    const-string v1, "WLAN_TO_LTE"

    .line 175
    .local v1, "mDirection":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/sec/internal/ims/core/PdnController;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEpdgHandoverResult :  Direction : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 177
    if-eqz v2, :cond_2

    .line 178
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController$1;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v3, p1, v0}, Lcom/sec/internal/ims/core/PdnController;->setPendedEPDGWeakSignal(IZ)V

    .line 179
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController$1;->this$0:Lcom/sec/internal/ims/core/PdnController;

    const/16 v3, 0x68

    invoke-virtual {v0, v3, p1, p2, p4}, Lcom/sec/internal/ims/core/PdnController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/PdnController;->sendMessage(Landroid/os/Message;)Z

    .line 183
    :cond_2
    return-void
.end method

.method public onEpdgIpsecConnection(ILjava/lang/String;II)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "ikeError"    # I
    .param p4, "throttleCount"    # I

    .line 195
    invoke-static {}, Lcom/sec/internal/ims/core/PdnController;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEpdgIpsecConnection :  ikeError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " apnType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 196
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 197
    .local v2, "mResult":Z
    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController$1;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 198
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController$1;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v3, p1, v1}, Lcom/sec/internal/ims/core/PdnController;->setPendedEPDGWeakSignal(IZ)V

    .line 199
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController$1;->this$0:Lcom/sec/internal/ims/core/PdnController;

    const/16 v3, 0x68

    invoke-virtual {v1, v3, p1, v0, p2}, Lcom/sec/internal/ims/core/PdnController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/PdnController;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 200
    :cond_1
    const/16 v0, 0x18

    if-ne p3, v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController$1;->this$0:Lcom/sec/internal/ims/core/PdnController;

    const/16 v1, 0x6d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/core/PdnController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->sendMessage(Landroid/os/Message;)Z

    .line 204
    :cond_2
    :goto_1
    return-void
.end method

.method public onEpdgIpsecDisconnection(ILjava/lang/String;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "apnType"    # Ljava/lang/String;

    .line 208
    invoke-static {}, Lcom/sec/internal/ims/core/PdnController;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEpdgIpsecDisconnection :  apnType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 209
    const-string v0, "ims"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController$1;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/PdnController;->access$300(Lcom/sec/internal/ims/core/PdnController;I)V

    .line 212
    :cond_0
    return-void
.end method

.method public onEpdgRegister(IZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "cdmaAvailability"    # Z

    .line 216
    invoke-static {}, Lcom/sec/internal/ims/core/PdnController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onEpdgRegister"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController$1;->this$0:Lcom/sec/internal/ims/core/PdnController;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/sec/internal/ims/core/PdnController;->access$200(Lcom/sec/internal/ims/core/PdnController;IZZ)V

    .line 219
    return-void
.end method

.method public onEpdgShowPopup(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "popupType"    # I

    .line 224
    return-void
.end method
