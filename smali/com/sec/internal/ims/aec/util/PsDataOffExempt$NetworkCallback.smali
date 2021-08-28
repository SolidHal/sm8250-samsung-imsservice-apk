.class Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "PsDataOffExempt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/aec/util/PsDataOffExempt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/aec/util/PsDataOffExempt;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;->this$0:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/aec/util/PsDataOffExempt;Lcom/sec/internal/ims/aec/util/PsDataOffExempt$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/aec/util/PsDataOffExempt;
    .param p2, "x1"    # Lcom/sec/internal/ims/aec/util/PsDataOffExempt$1;

    .line 81
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;-><init>(Lcom/sec/internal/ims/aec/util/PsDataOffExempt;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .line 84
    invoke-static {}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;->this$0:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-static {v2}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->access$200(Lcom/sec/internal/ims/aec/util/PsDataOffExempt;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->d(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;->this$0:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->access$302(Lcom/sec/internal/ims/aec/util/PsDataOffExempt;Landroid/net/Network;)Landroid/net/Network;

    .line 87
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;->this$0:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-static {v0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->access$400(Lcom/sec/internal/ims/aec/util/PsDataOffExempt;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    .line 88
    .local v0, "lp":Landroid/net/LinkProperties;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAvailable link properties InterfaceName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", LinkAddresses: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", DnsAddresses: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;->this$0:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-static {v3}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->access$200(Lcom/sec/internal/ims/aec/util/PsDataOffExempt;)I

    move-result v3

    .line 92
    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;->this$0:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-static {v1}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->access$500(Lcom/sec/internal/ims/aec/util/PsDataOffExempt;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3f0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 89
    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->access$100()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;->this$0:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-static {v2}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->access$200(Lcom/sec/internal/ims/aec/util/PsDataOffExempt;)I

    move-result v2

    const-string v3, "onAvailable: no link properties"

    invoke-static {v1, v3, v2}, Lcom/sec/internal/log/AECLog;->d(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;->this$0:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->unregisterNetworkCallback()V

    .line 98
    :goto_1
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 102
    invoke-static {}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;->this$0:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-static {v2}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->access$200(Lcom/sec/internal/ims/aec/util/PsDataOffExempt;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    return-void
.end method
