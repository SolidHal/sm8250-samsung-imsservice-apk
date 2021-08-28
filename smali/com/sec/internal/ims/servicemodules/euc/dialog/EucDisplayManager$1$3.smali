.class Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$3;
.super Ljava/lang/Object;
.source "EucDisplayManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 230
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$3;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$3;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 233
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$3;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;->DECLINE:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$3;->val$input:Landroid/widget/EditText;

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->access$600(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Landroid/widget/EditText;)V

    .line 234
    return-void
.end method
