.class Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;
.super Ljava/lang/Object;
.source "NSDSModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/PdnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    .line 249
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(ILandroid/net/Network;)V
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "network"    # Landroid/net/Network;

    .line 252
    sget v0, Lcom/sec/ims/extensions/ConnectivityManagerExt;->TYPE_MOBILE_XCAP:I

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 253
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$000(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mIsXcapConnected:Z

    .line 255
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$1100(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Network;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$500(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;->setSocketFactory(Ljavax/net/SocketFactory;I)V

    .line 256
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$1100(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$500(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;->setNetwork(Landroid/net/Network;I)V

    .line 257
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$000(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "networkType mismatched or null network!"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :goto_0
    return-void
.end method

.method public onDisconnected(IZ)V
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "isPdnUp"    # Z

    .line 265
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$000(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->mIsXcapConnected:Z

    .line 267
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$1100(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule$3;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;->access$500(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;->clearNetworkInfo(I)V

    .line 268
    return-void
.end method

.method public onLocalIpChanged(IZ)V
    .locals 0
    .param p1, "networkType"    # I
    .param p2, "isStackedIpChanged"    # Z

    .line 280
    return-void
.end method

.method public onNetworkRequestFail()V
    .locals 0

    .line 297
    return-void
.end method

.method public onPcscfAddressChanged(ILjava/util/List;)V
    .locals 0
    .param p1, "networkType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 276
    .local p2, "pcscf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public onResumed(I)V
    .locals 0
    .param p1, "networkType"    # I

    .line 284
    return-void
.end method

.method public onResumedBySnapshot(I)V
    .locals 0
    .param p1, "networkType"    # I

    .line 292
    return-void
.end method

.method public onSuspended(I)V
    .locals 0
    .param p1, "networkType"    # I

    .line 272
    return-void
.end method

.method public onSuspendedBySnapshot(I)V
    .locals 0
    .param p1, "networkType"    # I

    .line 288
    return-void
.end method
