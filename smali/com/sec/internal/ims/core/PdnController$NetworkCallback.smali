.class Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "PdnController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/PdnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkCallback"
.end annotation


# static fields
.field private static final LOCAL_IP_CHANGED:I = 0x1

.field private static final LOCAL_STACKED_IP_CHANGED:I = 0x2


# instance fields
.field private mDisconnectRequested:Z

.field private mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

.field private final mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

.field private mNetwork:Landroid/net/Network;

.field private final mNetworkType:I

.field private mPhoneId:I

.field private mSuspended:Z

.field final synthetic this$0:Lcom/sec/internal/ims/core/PdnController;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/PdnController;ILcom/sec/internal/interfaces/ims/core/PdnEventListener;I)V
    .locals 0
    .param p2, "networkType"    # I
    .param p3, "listener"    # Lcom/sec/internal/interfaces/ims/core/PdnEventListener;
    .param p4, "phoneId"    # I

    .line 603
    iput-object p1, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 597
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mNetwork:Landroid/net/Network;

    .line 598
    new-instance p1, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-direct {p1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    .line 599
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mSuspended:Z

    .line 600
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mDisconnectRequested:Z

    .line 601
    iput p1, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mPhoneId:I

    .line 604
    iput-object p3, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    .line 605
    iput p2, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mNetworkType:I

    .line 606
    iput p4, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mPhoneId:I

    .line 607
    return-void
.end method

.method static synthetic access$1600(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/PdnController$NetworkCallback;

    .line 591
    iget v0, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mNetworkType:I

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;)Landroid/net/Network;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/PdnController$NetworkCallback;

    .line 591
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;Landroid/net/Network;)Landroid/net/Network;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
    .param p1, "x1"    # Landroid/net/Network;

    .line 591
    iput-object p1, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/PdnController$NetworkCallback;

    .line 591
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mSuspended:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
    .param p1, "x1"    # Z

    .line 591
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mSuspended:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/PdnController$NetworkCallback;

    .line 591
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
    .param p1, "x1"    # Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    .line 591
    iput-object p1, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
    .param p1, "x1"    # Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    .line 591
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->isLocalIpChanged(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
    .param p1, "x1"    # Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    .line 591
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->isPcscfAddressChanged(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;)Lcom/sec/internal/interfaces/ims/core/PdnEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/PdnController$NetworkCallback;

    .line 591
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/core/PdnController$NetworkCallback;

    .line 591
    iget v0, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mPhoneId:I

    return v0
.end method

.method private isLocalIpChanged(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)I
    .locals 5
    .param p1, "linkProperties"    # Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    .line 688
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->this$0:Lcom/sec/internal/ims/core/PdnController;

    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->filterAddresses(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 689
    .local v0, "oldAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/PdnController;->filterAddresses(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 691
    .local v1, "newAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 695
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-virtual {v3, p1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->isIdenticalInterfaceName(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 696
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 699
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->this$0:Lcom/sec/internal/ims/core/PdnController;

    iget-object v4, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-virtual {v4}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getAllAddresses()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/PdnController;->filterAddresses(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 700
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getAllAddresses()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/PdnController;->filterAddresses(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 702
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 703
    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 708
    :cond_2
    return v2

    .line 704
    :cond_3
    :goto_0
    const/4 v2, 0x2

    return v2

    .line 697
    :cond_4
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 692
    :cond_5
    :goto_2
    return v2
.end method

.method private isPcscfAddressChanged(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Z
    .locals 5
    .param p1, "linkProperties"    # Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    .line 712
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->this$0:Lcom/sec/internal/ims/core/PdnController;

    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getPcscfServers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->filterAddresses(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 713
    .local v0, "oldPcscfAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getPcscfServers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/PdnController;->filterAddresses(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 715
    .local v1, "newPcscfAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 716
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 720
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 721
    return v2

    .line 724
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-virtual {v3, p1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->isIdenticalInterfaceName(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 725
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 726
    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 724
    :cond_3
    return v2

    .line 717
    :cond_4
    :goto_0
    return v2
.end method


# virtual methods
.method public isDisconnectRequested()Z
    .locals 1

    .line 614
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mDisconnectRequested:Z

    return v0
.end method

.method public onAvailable(Landroid/net/Network;)V
    .locals 6
    .param p1, "network"    # Landroid/net/Network;

    .line 619
    iget v0, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 620
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mNetworkType:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 621
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->this$0:Lcom/sec/internal/ims/core/PdnController;

    iget-boolean v1, v1, Lcom/sec/internal/ims/core/PdnController;->mIsDisconnecting:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->this$0:Lcom/sec/internal/ims/core/PdnController;

    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/PdnController;->isNetworkRequested(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 622
    invoke-static {}, Lcom/sec/internal/ims/core/PdnController;->access$000()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignore onAvailable: network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 623
    return-void

    .line 627
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;

    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->this$0:Lcom/sec/internal/ims/core/PdnController;

    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;-><init>(Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;Landroid/net/Network;)V

    .line 628
    .local v1, "event":Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->this$0:Lcom/sec/internal/ims/core/PdnController;

    const/16 v3, 0x6c

    iget v4, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mNetworkType:I

    iget v5, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mPhoneId:I

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/sec/internal/ims/core/PdnController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/PdnController;->sendMessage(Landroid/os/Message;)Z

    .line 629
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;

    .line 650
    invoke-static {}, Lcom/sec/internal/ims/core/PdnController;->access$000()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLinkPropertiesChanged: network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " lp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " old "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 652
    iget v0, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 653
    const/4 v0, 0x0

    .line 654
    .local v0, "callback":Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-static {v1}, Lcom/sec/internal/ims/core/PdnController;->access$1100(Lcom/sec/internal/ims/core/PdnController;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 655
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-static {v2}, Lcom/sec/internal/ims/core/PdnController;->access$1100(Lcom/sec/internal/ims/core/PdnController;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 656
    invoke-static {}, Lcom/sec/internal/ims/core/PdnController;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onLinkPropertiesChanged: No callback exists"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    monitor-exit v1

    return-void

    .line 659
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-static {v2}, Lcom/sec/internal/ims/core/PdnController;->access$1100(Lcom/sec/internal/ims/core/PdnController;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;

    move-object v0, v2

    .line 660
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mNetwork:Landroid/net/Network;

    if-nez v1, :cond_2

    .line 663
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/core/PdnController;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onLinkPropertiesChanged: null callback"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    return-void

    .line 660
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 668
    .end local v0    # "callback":Lcom/sec/internal/ims/core/PdnController$NetworkCallback;
    :cond_2
    new-instance v0, Lcom/sec/internal/ims/core/PdnController$LinkpropertiesChangedEvent;

    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->this$0:Lcom/sec/internal/ims/core/PdnController;

    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-direct {v0, v1, v2, p2}, Lcom/sec/internal/ims/core/PdnController$LinkpropertiesChangedEvent;-><init>(Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;Landroid/net/LinkProperties;)V

    .line 669
    .local v0, "event":Lcom/sec/internal/ims/core/PdnController$LinkpropertiesChangedEvent;
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->this$0:Lcom/sec/internal/ims/core/PdnController;

    const/16 v2, 0x6f

    iget v3, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mNetworkType:I

    iget v4, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mPhoneId:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sec/internal/ims/core/PdnController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/PdnController;->sendMessage(Landroid/os/Message;)Z

    .line 671
    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "maxMsToLive"    # I

    .line 644
    invoke-static {}, Lcom/sec/internal/ims/core/PdnController;->access$000()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLosing: network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " maxMsToLive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 646
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 6
    .param p1, "network"    # Landroid/net/Network;

    .line 633
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-static {v0}, Lcom/sec/internal/ims/core/PdnController;->access$1000(Lcom/sec/internal/ims/core/PdnController;)Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLost"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->this$0:Lcom/sec/internal/ims/core/PdnController;

    iget-object v0, v0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 635
    .local v0, "ni":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 636
    invoke-static {}, Lcom/sec/internal/ims/core/PdnController;->access$000()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 638
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->this$0:Lcom/sec/internal/ims/core/PdnController;

    const/16 v2, 0x67

    iget v3, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mNetworkType:I

    iget v4, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mPhoneId:I

    iget-object v5, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/internal/ims/core/PdnController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/PdnController;->sendMessage(Landroid/os/Message;)Z

    .line 640
    return-void
.end method

.method public onNetworkResumed(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 682
    invoke-static {}, Lcom/sec/internal/ims/core/PdnController;->access$000()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mPhoneId:I

    const-string/jumbo v2, "resume!"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 683
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mSuspended:Z

    .line 684
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    iget v1, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mNetworkType:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onResumed(I)V

    .line 685
    return-void
.end method

.method public onNetworkSuspended(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 675
    invoke-static {}, Lcom/sec/internal/ims/core/PdnController;->access$000()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mPhoneId:I

    const-string/jumbo v2, "suspend!"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mSuspended:Z

    .line 677
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    iget v1, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mNetworkType:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onSuspended(I)V

    .line 678
    return-void
.end method

.method public setDisconnectRequested()V
    .locals 1

    .line 610
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->mDisconnectRequested:Z

    .line 611
    return-void
.end method
