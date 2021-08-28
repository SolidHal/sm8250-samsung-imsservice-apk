.class Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager$1;
.super Ljava/lang/Object;
.source "NSDSNetworkInfoManager.java"

# interfaces
.implements Lcom/squareup/okhttp/Dns;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;->setNetwork(Landroid/net/Network;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;

.field final synthetic val$phoneId:I


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;

    .line 48
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;

    iput p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager$1;->val$phoneId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 51
    if-eqz p1, :cond_0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;->access$000(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager;)[Landroid/net/Network;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSNetworkInfoManager$1;->val$phoneId:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/net/UnknownHostException;

    const-string v2, "android.net.Network.getAllByName returned null"

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "hostname == null"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
