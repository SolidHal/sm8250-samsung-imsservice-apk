.class Lcom/sec/internal/ims/core/PdnController$2;
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

    .line 517
    iput-object p1, p0, Lcom/sec/internal/ims/core/PdnController$2;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 520
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController$2;->this$0:Lcom/sec/internal/ims/core/PdnController;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->sendEmptyMessage(I)Z

    .line 521
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 525
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController$2;->this$0:Lcom/sec/internal/ims/core/PdnController;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->sendEmptyMessage(I)Z

    .line 527
    return-void
.end method
