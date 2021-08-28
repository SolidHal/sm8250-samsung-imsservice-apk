.class Lcom/sec/internal/ims/core/WfcEpdgManager$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WfcEpdgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/WfcEpdgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 96
    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$1;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 99
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$1;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$1;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$002(Lcom/sec/internal/ims/core/WfcEpdgManager;Z)Z

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$1;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->sendMessage(I)V

    .line 103
    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 107
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$1;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->access$002(Lcom/sec/internal/ims/core/WfcEpdgManager;Z)Z

    .line 108
    return-void
.end method
