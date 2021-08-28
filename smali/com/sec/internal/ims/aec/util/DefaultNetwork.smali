.class public Lcom/sec/internal/ims/aec/util/DefaultNetwork;
.super Ljava/lang/Object;
.source "DefaultNetwork.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mModuleHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-class v0, Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->LOG_TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 23
    iput-object p2, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->mModuleHandler:Landroid/os/Handler;

    .line 24
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/aec/util/DefaultNetwork;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    .line 14
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/aec/util/DefaultNetwork;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    .line 14
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/aec/util/DefaultNetwork;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    .line 14
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->mModuleHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getDefaultNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1

    .line 42
    new-instance v0, Lcom/sec/internal/ims/aec/util/DefaultNetwork$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/aec/util/DefaultNetwork$1;-><init>(Lcom/sec/internal/ims/aec/util/DefaultNetwork;)V

    return-object v0
.end method


# virtual methods
.method public registerDefaultNetworkCallback()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_0

    .line 29
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->getDefaultNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 30
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 32
    :cond_0
    return-void
.end method

.method public unregisterNetworkCallback()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 36
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 39
    :cond_0
    return-void
.end method
