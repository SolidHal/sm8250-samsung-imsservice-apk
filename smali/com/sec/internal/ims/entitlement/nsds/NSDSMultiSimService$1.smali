.class Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NSDSMultiSimService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getDefaultNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    .line 412
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 415
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAvailable"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    if-eqz p1, :cond_0

    .line 417
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->access$1200(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->access$1300(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;)V

    .line 421
    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 425
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLost"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    return-void
.end method
