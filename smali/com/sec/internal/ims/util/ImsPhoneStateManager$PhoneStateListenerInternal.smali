.class Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;
.super Landroid/telephony/PhoneStateListener;
.source "ImsPhoneStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/util/ImsPhoneStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneStateListenerInternal"
.end annotation


# instance fields
.field mSimSlot:I

.field mSubId:I

.field final synthetic this$0:Lcom/sec/internal/ims/util/ImsPhoneStateManager;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/util/ImsPhoneStateManager;II)V
    .locals 0
    .param p2, "subId"    # I
    .param p3, "phoneId"    # I

    .line 166
    iput-object p1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    .line 167
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 168
    iput p3, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    .line 169
    iput p2, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSubId:I

    .line 170
    return-void
.end method

.method private isImsSlot()Z
    .locals 1

    .line 187
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getSimSlot()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    return v0
.end method

.method public getSubId()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSubId:I

    return v0
.end method

.method public onCallForwardingIndicatorChanged(Z)V
    .locals 2
    .param p1, "cfi"    # Z

    .line 192
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->access$000(Lcom/sec/internal/ims/util/ImsPhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 193
    .local v0, "listener":Landroid/telephony/PhoneStateListener;
    invoke-direct {p0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->isImsSlot()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    .line 197
    return-void

    .line 194
    :cond_1
    :goto_0
    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->access$000(Lcom/sec/internal/ims/util/ImsPhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 202
    .local v0, "listener":Landroid/telephony/PhoneStateListener;
    invoke-direct {p0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->isImsSlot()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 206
    return-void

    .line 203
    :cond_1
    :goto_0
    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 210
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->access$000(Lcom/sec/internal/ims/util/ImsPhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 211
    .local v0, "listener":Landroid/telephony/PhoneStateListener;
    invoke-direct {p0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->isImsSlot()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V

    .line 215
    return-void

    .line 212
    :cond_1
    :goto_0
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 2
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .line 219
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->access$000(Lcom/sec/internal/ims/util/ImsPhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 220
    .local v0, "listener":Landroid/telephony/PhoneStateListener;
    invoke-direct {p0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->isImsSlot()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    .line 224
    return-void

    .line 221
    :cond_1
    :goto_0
    return-void
.end method

.method public onDataActivity(I)V
    .locals 2
    .param p1, "direction"    # I

    .line 228
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->access$000(Lcom/sec/internal/ims/util/ImsPhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 229
    .local v0, "listener":Landroid/telephony/PhoneStateListener;
    invoke-direct {p0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->isImsSlot()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onDataActivity(I)V

    .line 233
    return-void

    .line 230
    :cond_1
    :goto_0
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .line 248
    invoke-static {}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->access$100()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    const-string v2, "onDataConnectionStateChanged(s) E"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->access$000(Lcom/sec/internal/ims/util/ImsPhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 250
    .local v0, "listener":Landroid/telephony/PhoneStateListener;
    invoke-direct {p0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->isImsSlot()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->access$100()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    const-string v3, "onDataConnectionStateChanged(s) X"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 254
    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    .line 255
    return-void

    .line 251
    :cond_1
    :goto_0
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .line 237
    invoke-static {}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->access$100()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    const-string v2, "onDataConnectionStateChanged(s, n) E"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->access$000(Lcom/sec/internal/ims/util/ImsPhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 239
    .local v0, "listener":Landroid/telephony/PhoneStateListener;
    invoke-direct {p0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->isImsSlot()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->access$100()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    const-string v3, "onDataConnectionStateChanged(s, n) X"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 243
    invoke-virtual {v0, p1, p2}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    .line 244
    return-void

    .line 240
    :cond_1
    :goto_0
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 2
    .param p1, "mwi"    # Z

    .line 259
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->access$000(Lcom/sec/internal/ims/util/ImsPhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 260
    .local v0, "listener":Landroid/telephony/PhoneStateListener;
    invoke-direct {p0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->isImsSlot()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    .line 264
    return-void

    .line 261
    :cond_1
    :goto_0
    return-void
.end method

.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 2
    .param p1, "state"    # Landroid/telephony/PreciseDataConnectionState;

    .line 297
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->access$000(Lcom/sec/internal/ims/util/ImsPhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 298
    .local v0, "listener":Landroid/telephony/PhoneStateListener;
    invoke-direct {p0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->isImsSlot()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V

    .line 302
    return-void

    .line 299
    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .line 268
    invoke-static {}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->access$100()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    const-string/jumbo v2, "onServiceStateChanged E"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->access$000(Lcom/sec/internal/ims/util/ImsPhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 270
    .local v0, "listener":Landroid/telephony/PhoneStateListener;
    invoke-direct {p0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->isImsSlot()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->access$100()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    const-string/jumbo v3, "onServiceStateChanged X"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 274
    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 275
    return-void

    .line 271
    :cond_1
    :goto_0
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 279
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->access$000(Lcom/sec/internal/ims/util/ImsPhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 280
    .local v0, "listener":Landroid/telephony/PhoneStateListener;
    invoke-direct {p0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->isImsSlot()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 284
    return-void

    .line 281
    :cond_1
    :goto_0
    return-void
.end method

.method public onSrvccStateChanged(I)V
    .locals 2
    .param p1, "srvccState"    # I

    .line 288
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->this$0:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->access$000(Lcom/sec/internal/ims/util/ImsPhoneStateManager;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->mSimSlot:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 289
    .local v0, "listener":Landroid/telephony/PhoneStateListener;
    invoke-direct {p0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->isImsSlot()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {v0, p1}, Landroid/telephony/PhoneStateListener;->onSrvccStateChanged(I)V

    .line 293
    return-void

    .line 290
    :cond_1
    :goto_0
    return-void
.end method
