.class Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$1;
.super Ljava/lang/Object;
.source "ImsCallSessionManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    .line 88
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleEpdgState(IZ)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "connected"    # Z

    .line 128
    if-eqz p2, :cond_0

    const v0, 0x3000000a

    goto :goto_0

    :cond_0
    const v0, 0x3000000b

    .line 129
    .local v0, "logClass":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$100(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 131
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 132
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getNetworkType()I

    move-result v3

    const/16 v4, 0xf

    if-eq v3, v4, :cond_1

    .line 133
    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setEpdgState(Z)V

    .line 135
    .end local v2    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    :cond_1
    goto :goto_1

    .line 136
    :cond_2
    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;I)V
    .locals 3
    .param p1, "location"    # Landroid/telephony/CellLocation;
    .param p2, "phoneId"    # I

    .line 112
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCellLocationChanged, phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method public onDataConnectionStateChanged(IZI)V
    .locals 6
    .param p1, "networkType"    # I
    .param p2, "isWifiConnected"    # Z
    .param p3, "phoneId"    # I

    .line 92
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged(): networkType ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {p1}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]isWifiConnected ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "], phoneId ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 97
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v1, Lcom/sec/internal/constants/Mno;->CELLC_SOUTHAFRICA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    if-nez p2, :cond_1

    .line 98
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$100(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 99
    .local v2, "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    if-ne v3, p3, :cond_0

    .line 101
    const/16 v3, 0x15

    :try_start_0
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_1

    .line 102
    :catch_0
    move-exception v3

    .line 103
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WIFI DISCONNECTED: "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .end local v2    # "session":Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    goto :goto_0

    .line 108
    :cond_1
    return-void
.end method

.method public onDefaultNetworkStateChanged(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 152
    return-void
.end method

.method public onEpdgConnected(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 117
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEpdgConnected: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$1;->handleEpdgState(IZ)V

    .line 119
    return-void
.end method

.method public onEpdgDeregisterRequested(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 140
    return-void
.end method

.method public onEpdgDisconnected(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 123
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEpdgDisconnected: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager$1;->handleEpdgState(IZ)V

    .line 125
    return-void
.end method

.method public onEpdgIpsecDisconnected(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 148
    return-void
.end method

.method public onEpdgRegisterRequested(IZ)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "cdmaAvailability"    # Z

    .line 144
    return-void
.end method

.method public onIKEAuthFAilure(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 156
    return-void
.end method

.method public onPreciseDataConnectionStateChanged(ILandroid/telephony/PreciseDataConnectionState;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "state"    # Landroid/telephony/PreciseDataConnectionState;

    .line 160
    return-void
.end method
