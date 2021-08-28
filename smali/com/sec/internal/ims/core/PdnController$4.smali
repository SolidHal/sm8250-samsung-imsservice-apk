.class Lcom/sec/internal/ims/core/PdnController$4;
.super Ljava/lang/Object;
.source "PdnController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/core/PdnController;->requestNetwork(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/PdnController;

.field final synthetic val$callback:Lcom/sec/internal/ims/core/PdnController$NetworkCallback;

.field final synthetic val$listener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

.field final synthetic val$networkType:I


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;ILcom/sec/internal/ims/core/PdnController$NetworkCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/PdnController;

    .line 947
    iput-object p1, p0, Lcom/sec/internal/ims/core/PdnController$4;->this$0:Lcom/sec/internal/ims/core/PdnController;

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController$4;->val$listener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    iput p3, p0, Lcom/sec/internal/ims/core/PdnController$4;->val$networkType:I

    iput-object p4, p0, Lcom/sec/internal/ims/core/PdnController$4;->val$callback:Lcom/sec/internal/ims/core/PdnController$NetworkCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 950
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController$4;->val$listener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    iget v1, p0, Lcom/sec/internal/ims/core/PdnController$4;->val$networkType:I

    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController$4;->val$callback:Lcom/sec/internal/ims/core/PdnController$NetworkCallback;

    invoke-static {v2}, Lcom/sec/internal/ims/core/PdnController$NetworkCallback;->access$1700(Lcom/sec/internal/ims/core/PdnController$NetworkCallback;)Landroid/net/Network;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onConnected(ILandroid/net/Network;)V

    .line 951
    return-void
.end method
