.class Lcom/sec/internal/ims/servicemodules/im/ImModule$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ImModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/im/ImModule;->setNetworkCallback(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field final synthetic val$phoneId:I


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1509
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->val$phoneId:I

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method private handleNetworkForCancelFtWiFiDisconnection(Landroid/net/Network;Z)V
    .locals 8
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "isAvailable"    # Z

    .line 1540
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->access$400(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1541
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 1542
    .local v1, "nc":Landroid/net/NetworkCapabilities;
    if-nez v1, :cond_0

    .line 1543
    return-void

    .line 1545
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    .line 1546
    .local v3, "isWifi":Z
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->access$000()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->val$phoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleNetworkForCancelFtWiFiDisconnection: isWifi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isAvailable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1547
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->access$500(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    .line 1548
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->val$phoneId:I

    invoke-static {v4, v2, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->access$600(Lcom/sec/internal/ims/servicemodules/im/ImModule;ZI)V

    goto :goto_1

    .line 1549
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->access$500(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v3, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    if-nez v3, :cond_4

    if-eqz p2, :cond_4

    .line 1550
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->val$phoneId:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->access$600(Lcom/sec/internal/ims/servicemodules/im/ImModule;ZI)V

    .line 1551
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->access$700(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getAllImSessions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 1552
    .local v4, "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->WIFI_DISCONNECTED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->forceCancelFt(ZLcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    .line 1553
    .end local v4    # "session":Lcom/sec/internal/ims/servicemodules/im/ImSession;
    goto :goto_0

    .line 1555
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 1512
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->val$phoneId:I

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1513
    return-void

    .line 1515
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INET  : onAvailable, phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->val$phoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->access$202(Lcom/sec/internal/ims/servicemodules/im/ImModule;Z)Z

    .line 1517
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->val$phoneId:I

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v2, "cancel_ft_wifi_disconnected"

    invoke-interface {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1518
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->handleNetworkForCancelFtWiFiDisconnection(Landroid/net/Network;Z)V

    goto :goto_0

    .line 1519
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->access$300(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Lcom/sec/internal/helper/PhoneIdKeyMap;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->val$phoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1520
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    const/16 v1, 0x17

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->val$phoneId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->sendMessage(Landroid/os/Message;)Z

    .line 1522
    :cond_2
    :goto_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .line 1526
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->val$phoneId:I

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1527
    return-void

    .line 1529
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INET : onLost, phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->val$phoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->access$202(Lcom/sec/internal/ims/servicemodules/im/ImModule;Z)Z

    .line 1531
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->val$phoneId:I

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v2, "cancel_ft_wifi_disconnected"

    invoke-interface {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1532
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->handleNetworkForCancelFtWiFiDisconnection(Landroid/net/Network;Z)V

    goto :goto_0

    .line 1533
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->access$300(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Lcom/sec/internal/helper/PhoneIdKeyMap;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->val$phoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1535
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    const/16 v1, 0x18

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$2;->val$phoneId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1537
    :cond_2
    :goto_0
    return-void
.end method
