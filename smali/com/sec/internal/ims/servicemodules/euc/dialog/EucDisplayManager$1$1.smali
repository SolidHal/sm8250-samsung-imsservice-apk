.class Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$1;
.super Ljava/lang/Object;
.source "EucDisplayManager.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 176
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$1;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 178
    if-eqz p2, :cond_0

    .line 179
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$1;->val$input:Landroid/widget/EditText;

    .line 180
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$1;->val$input:Landroid/widget/EditText;

    .line 183
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 185
    :goto_0
    return-void
.end method
