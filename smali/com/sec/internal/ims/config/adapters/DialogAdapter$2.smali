.class Lcom/sec/internal/ims/config/adapters/DialogAdapter$2;
.super Ljava/lang/Object;
.source "DialogAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/adapters/DialogAdapter;->createAcceptRejectBuilder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

.field final synthetic val$reject:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    .line 447
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$2;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    iput-object p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$2;->val$reject:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 450
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.dialogadapter.action.CANCEL_TC_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 451
    .local v0, "cancelTcIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$2;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {v1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$200(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)I

    move-result v1

    const-string/jumbo v2, "phone_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 452
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$2;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {v1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$700(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 453
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 454
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PositiveButton"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$2;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$802(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)Z

    .line 456
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$2;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$2;->val$reject:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$900(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$2;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {v1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$1000(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 459
    :cond_0
    return-void
.end method
