.class public Lcom/sec/internal/ims/aec/util/PsDataOffExempt;
.super Ljava/lang/Object;
.source "PsDataOffExempt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private mNetwork:Landroid/net/Network;

.field private mNetworkCallback:Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;

.field private final mPhoneId:I

.field private final mWorkflowHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p2, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mPhoneId:I

    .line 29
    iput-object p3, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mWorkflowHandler:Landroid/os/Handler;

    .line 30
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 31
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/aec/util/PsDataOffExempt;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    .line 17
    iget v0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mPhoneId:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/internal/ims/aec/util/PsDataOffExempt;Landroid/net/Network;)Landroid/net/Network;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/aec/util/PsDataOffExempt;
    .param p1, "x1"    # Landroid/net/Network;

    .line 17
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/aec/util/PsDataOffExempt;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    .line 17
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/aec/util/PsDataOffExempt;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    .line 17
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mWorkflowHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getNetwork()Landroid/net/Network;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public isConnected()Z
    .locals 5

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "isConnected":Z
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mNetworkCallback:Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;

    if-eqz v1, :cond_2

    .line 40
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 41
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    .line 42
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_1

    .line 43
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    move v0, v2

    .line 44
    sget-object v2, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/AECLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_2
    return v0
.end method

.method public requestNetwork()V
    .locals 6

    .line 51
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mWorkflowHandler:Landroid/os/Handler;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 54
    :cond_0
    const/4 v0, 0x0

    .line 55
    .local v0, "transport":I
    const/16 v1, 0x9

    .line 56
    .local v1, "netCapability":I
    iget v2, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    .line 58
    .local v2, "subId":I
    sget-object v3, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestNetwork: transport "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " capability "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " subId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mPhoneId:I

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 62
    invoke-virtual {v3, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    .line 63
    invoke-virtual {v3, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    new-instance v4, Landroid/net/TelephonyNetworkSpecifier$Builder;

    invoke-direct {v4}, Landroid/net/TelephonyNetworkSpecifier$Builder;-><init>()V

    .line 64
    invoke-virtual {v4, v2}, Landroid/net/TelephonyNetworkSpecifier$Builder;->setSubscriptionId(I)Landroid/net/TelephonyNetworkSpecifier$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/TelephonyNetworkSpecifier$Builder;->build()Landroid/net/TelephonyNetworkSpecifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    .line 65
    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    .line 67
    .local v3, "request":Landroid/net/NetworkRequest;
    new-instance v4, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;-><init>(Lcom/sec/internal/ims/aec/util/PsDataOffExempt;Lcom/sec/internal/ims/aec/util/PsDataOffExempt$1;)V

    iput-object v4, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mNetworkCallback:Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;

    .line 68
    iget-object v5, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v3, v4}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 70
    .end local v0    # "transport":I
    .end local v1    # "netCapability":I
    .end local v2    # "subId":I
    .end local v3    # "request":Landroid/net/NetworkRequest;
    :goto_0
    return-void
.end method

.method public unregisterNetworkCallback()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mNetworkCallback:Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;

    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mNetwork:Landroid/net/Network;

    .line 76
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mNetworkCallback:Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;

    .line 77
    sget-object v0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mPhoneId:I

    const-string/jumbo v2, "unregisterNetworkCallback"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    :cond_0
    return-void
.end method
