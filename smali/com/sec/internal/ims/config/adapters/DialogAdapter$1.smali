.class Lcom/sec/internal/ims/config/adapters/DialogAdapter$1;
.super Ljava/lang/Object;
.source "DialogAdapter.java"

# interfaces
.implements Lcom/sec/internal/helper/userconsent/IHyperlinkOnClickListener;


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


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    .line 418
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$1;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/net/Uri;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 421
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 423
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 426
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$1;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {v1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$700(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 427
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$1;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {v1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$600(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$1;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {v1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$600(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :cond_0
    goto :goto_0

    .line 430
    :catch_0
    move-exception v1

    .line 431
    .local v1, "activityNotFound":Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$1;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {v2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$700(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060025

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 434
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 436
    .end local v1    # "activityNotFound":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method
