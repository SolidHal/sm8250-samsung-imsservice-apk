.class Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4$1;
.super Ljava/lang/Object;
.source "EucDisplayManager.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4;

.field final synthetic val$acceptButton:Landroid/widget/Button;

.field final synthetic val$rejectButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0
    .param p1, "this$2"    # Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4;

    .line 252
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4$1;->this$2:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4$1;->val$acceptButton:Landroid/widget/Button;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4$1;->val$rejectButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .line 270
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 257
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 262
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "userInput":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4$1;->val$acceptButton:Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 264
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$4$1;->val$rejectButton:Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 265
    return-void
.end method
