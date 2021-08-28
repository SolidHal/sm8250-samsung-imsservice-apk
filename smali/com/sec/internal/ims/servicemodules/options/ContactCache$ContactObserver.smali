.class Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;
.super Landroid/database/ContentObserver;
.source "ContactCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/options/ContactCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/ContactCache;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 629
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;->this$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    .line 630
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 631
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 635
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "===== Contact updated. ====="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;->this$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->access$100(Lcom/sec/internal/ims/servicemodules/options/ContactCache;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 638
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No SIM available. bail."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    return-void

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;->this$0:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->sendMessageContactSync()V

    .line 642
    return-void
.end method
