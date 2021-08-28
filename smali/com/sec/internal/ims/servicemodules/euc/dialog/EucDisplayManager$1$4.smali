.class Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4;
.super Ljava/lang/Object;
.source "EucDisplayManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    .line 243
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 246
    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 248
    .local v0, "acceptButton":Landroid/widget/Button;
    move-object v1, p1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 250
    .local v1, "rejectButton":Landroid/widget/Button;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 251
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 252
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4;->val$input:Landroid/widget/EditText;

    new-instance v3, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4$1;-><init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 272
    return-void
.end method
