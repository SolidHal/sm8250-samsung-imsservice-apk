.class Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$2;
.super Ljava/lang/Object;
.source "EucDisplayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->hide(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

.field final synthetic val$eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    .line 334
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$2;->val$eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->access$200(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$2;->val$eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->access$200(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$2;->val$eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 339
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->access$200(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$2;->val$eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->access$100(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$2;->val$eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 342
    return-void
.end method
