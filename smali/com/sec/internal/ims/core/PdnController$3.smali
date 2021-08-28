.class Lcom/sec/internal/ims/core/PdnController$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "PdnController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/PdnController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/PdnController;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/PdnController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/PdnController;

    .line 531
    iput-object p1, p0, Lcom/sec/internal/ims/core/PdnController$3;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 534
    invoke-static {}, Lcom/sec/internal/ims/core/PdnController;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDefaultNetworkListener: onAvailable network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController$3;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-static {v0}, Lcom/sec/internal/ims/core/PdnController;->access$900(Lcom/sec/internal/ims/core/PdnController;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 536
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    .line 537
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController$3;->this$0:Lcom/sec/internal/ims/core/PdnController;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/PdnController;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 538
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController$3;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/PdnController;->sendEmptyMessage(I)Z

    .line 541
    :cond_1
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 545
    invoke-static {}, Lcom/sec/internal/ims/core/PdnController;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDefaultNetworkListener: onLost network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void
.end method
