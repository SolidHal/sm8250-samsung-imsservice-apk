.class Lcom/sec/internal/ims/config/adapters/DialogAdapter$7;
.super Ljava/lang/Object;
.source "DialogAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/adapters/DialogAdapter;->createMsisdnBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    .line 561
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$7;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 564
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 565
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NegativeButton"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$7;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$1202(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 567
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$7;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$1302(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)Z

    .line 568
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$7;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$1402(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)Z

    .line 569
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$7;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {v0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$1000(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 570
    return-void
.end method
