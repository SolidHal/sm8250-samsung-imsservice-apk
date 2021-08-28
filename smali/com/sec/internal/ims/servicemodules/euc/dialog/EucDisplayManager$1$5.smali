.class Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$5;
.super Ljava/lang/Object;
.source "EucDisplayManager.java"

# interfaces
.implements Lcom/sec/internal/helper/userconsent/IHyperlinkOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    .line 290
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$5;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/net/Uri;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 295
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$5;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->access$500(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 299
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$5;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->access$200(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$5;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$5;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->access$200(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$5;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 301
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$5;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$5;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$euc:Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$5;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$lang:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getDialogData(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;->getSubject()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$5;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$euc:Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$5;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$lang:Ljava/lang/String;

    .line 302
    invoke-interface {v3, v4}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getDialogData(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$5;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->eucMessageKey:Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    .line 301
    invoke-static {v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->access$700(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :cond_0
    goto :goto_0

    .line 304
    :catch_0
    move-exception v1

    .line 305
    .local v1, "activityNotFound":Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$5;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->access$500(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060025

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 308
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 310
    .end local v1    # "activityNotFound":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method
