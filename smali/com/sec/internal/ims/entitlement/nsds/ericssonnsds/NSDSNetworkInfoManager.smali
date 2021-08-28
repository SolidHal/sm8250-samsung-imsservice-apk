.class public Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;
.super Ljava/lang/Object;
.source "NSDSNetworkInfoManager.java"


# static fields
.field private static mNSDSNetworkInfoManager:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;


# instance fields
.field private mDnsList:[Lcom/squareup/okhttp/Dns;

.field private mNetworkList:[Landroid/net/Network;

.field private final mPhoneCount:I

.field private mSocketFactoryList:[Ljavax/net/SocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;->mPhoneCount:I

    .line 25
    new-array v1, v0, [Ljavax/net/SocketFactory;

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;->mSocketFactoryList:[Ljavax/net/SocketFactory;

    .line 26
    new-array v1, v0, [Landroid/net/Network;

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;->mNetworkList:[Landroid/net/Network;

    .line 27
    new-array v0, v0, [Lcom/squareup/okhttp/Dns;

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;->mDnsList:[Lcom/squareup/okhttp/Dns;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;)[Landroid/net/Network;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;

    .line 15
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;->mNetworkList:[Landroid/net/Network;

    return-object v0
.end method

.method public static getInstance()Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;
    .locals 1

    .line 31
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;->mNSDSNetworkInfoManager:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;

    invoke-direct {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;->mNSDSNetworkInfoManager:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;

    .line 35
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;->mNSDSNetworkInfoManager:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;

    return-object v0
.end method


# virtual methods
.method public clearNetworkInfo(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 71
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;->mSocketFactoryList:[Ljavax/net/SocketFactory;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;->mNetworkList:[Landroid/net/Network;

    aput-object v1, v0, p1

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;->mDnsList:[Lcom/squareup/okhttp/Dns;

    aput-object v1, v0, p1

    .line 74
    return-void
.end method

.method public getDns(I)Lcom/squareup/okhttp/Dns;
    .locals 1
    .param p1, "phoneId"    # I

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;->mDnsList:[Lcom/squareup/okhttp/Dns;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSocketFactory(I)Ljavax/net/SocketFactory;
    .locals 1
    .param p1, "phoneId"    # I

    .line 39
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;->mSocketFactoryList:[Ljavax/net/SocketFactory;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public setDns(Lcom/squareup/okhttp/Dns;I)V
    .locals 1
    .param p1, "dns"    # Lcom/squareup/okhttp/Dns;
    .param p2, "phoneId"    # I

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;->mDnsList:[Lcom/squareup/okhttp/Dns;

    aput-object p1, v0, p2

    .line 64
    return-void
.end method

.method public setNetwork(Landroid/net/Network;I)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "phoneId"    # I

    .line 47
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;->mNetworkList:[Landroid/net/Network;

    aput-object p1, v0, p2

    .line 48
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager$1;-><init>(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;I)V

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;->setDns(Lcom/squareup/okhttp/Dns;I)V

    .line 60
    return-void
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;I)V
    .locals 1
    .param p1, "socketFactory"    # Ljavax/net/SocketFactory;
    .param p2, "phoneId"    # I

    .line 43
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;->mSocketFactoryList:[Ljavax/net/SocketFactory;

    aput-object p1, v0, p2

    .line 44
    return-void
.end method
