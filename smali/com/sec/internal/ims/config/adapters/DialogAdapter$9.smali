.class Lcom/sec/internal/ims/config/adapters/DialogAdapter$9;
.super Ljava/lang/Object;
.source "DialogAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/adapters/DialogAdapter;->createAutoconfigBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
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

    .line 603
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$9;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 606
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 607
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PositiveButton"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$9;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$1502(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)Z

    .line 609
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$9;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {v0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$1000(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 610
    return-void
.end method
