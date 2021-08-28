.class Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$4;
.super Ljava/lang/Object;
.source "UtServiceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    .line 1205
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;I)V
    .locals 0
    .param p1, "location"    # Landroid/telephony/CellLocation;
    .param p2, "phoneId"    # I

    .line 1218
    return-void
.end method

.method public onDataConnectionStateChanged(IZI)V
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "isWifiConnected"    # Z
    .param p3, "phoneId"    # I

    .line 1210
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->access$300(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getMobileDataRegState(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->needToGetSimservDocOnBootup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->querySimServDoc(I)I

    .line 1215
    :cond_0
    return-void
.end method

.method public onDefaultNetworkStateChanged(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 1244
    return-void
.end method

.method public onEpdgConnected(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1222
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->needToGetSimservDocOnBootup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    const-string v0, "UtServiceModule"

    const-string v1, "onEpdgConnected"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1224
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->querySimServDoc(I)I

    .line 1226
    :cond_0
    return-void
.end method

.method public onEpdgDeregisterRequested(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 1235
    return-void
.end method

.method public onEpdgDisconnected(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 1229
    return-void
.end method

.method public onEpdgIpsecDisconnected(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 1241
    return-void
.end method

.method public onEpdgRegisterRequested(IZ)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "cdmaAvailability"    # Z

    .line 1232
    return-void
.end method

.method public onIKEAuthFAilure(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 1238
    return-void
.end method

.method public onPreciseDataConnectionStateChanged(ILandroid/telephony/PreciseDataConnectionState;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "state"    # Landroid/telephony/PreciseDataConnectionState;

    .line 1250
    if-eqz p2, :cond_0

    .line 1251
    invoke-virtual {p2}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionState()I

    move-result v0

    .line 1252
    .local v0, "dataState":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1253
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->access$000(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->handlePdnFail(Landroid/telephony/PreciseDataConnectionState;)V

    .line 1256
    .end local v0    # "dataState":I
    :cond_0
    return-void
.end method
