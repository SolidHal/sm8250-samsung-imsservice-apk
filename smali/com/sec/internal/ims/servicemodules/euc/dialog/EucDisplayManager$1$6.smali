.class Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$6;
.super Ljava/lang/Object;
.source "EucDisplayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->onClickAction(Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

.field final synthetic val$pinInput:Landroid/widget/EditText;

.field final synthetic val$response:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    .line 316
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$6;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$6;->val$response:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$6;->val$pinInput:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$6;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->val$callback:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$6;->val$response:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$6;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;->hasPin:Z

    if-eqz v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1$6;->val$pinInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 319
    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;->onSuccess(Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;)V

    .line 321
    return-void
.end method
