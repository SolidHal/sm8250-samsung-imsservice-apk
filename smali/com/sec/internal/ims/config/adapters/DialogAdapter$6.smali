.class Lcom/sec/internal/ims/config/adapters/DialogAdapter$6;
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

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    .line 544
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$6;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    iput-object p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$6;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 547
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 548
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PositiveButton"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$6;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$6;->val$input:Landroid/widget/EditText;

    .line 550
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$6;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {v2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$1100(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/helper/ImsCallUtil;->validatePhoneNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 549
    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$1202(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 551
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$6;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$1302(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)Z

    .line 552
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$6;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$1402(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)Z

    .line 553
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$6;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {v0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$1000(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 554
    return-void
.end method
