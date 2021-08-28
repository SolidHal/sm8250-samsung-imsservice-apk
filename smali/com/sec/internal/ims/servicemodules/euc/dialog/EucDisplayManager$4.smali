.class Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$4;
.super Ljava/lang/Object;
.source "EucDisplayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->hideAllForOwnIdentity(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

.field final synthetic val$ownIdentity:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    .line 373
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$4;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$4;->val$ownIdentity:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 376
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$4;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->access$200(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 377
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Landroid/app/AlertDialog;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 379
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Landroid/app/AlertDialog;>;"
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$4;->val$ownIdentity:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->getOwnIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 381
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$4;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->access$100(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 382
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 384
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Landroid/app/AlertDialog;>;"
    :cond_0
    goto :goto_0

    .line 385
    :cond_1
    return-void
.end method
