.class Lcom/sec/internal/ims/core/iil/IilManager$2;
.super Landroid/content/BroadcastReceiver;
.source "IilManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/iil/IilManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/iil/IilManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/iil/IilManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/iil/IilManager;

    .line 338
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IilManager$2;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 340
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .line 342
    .local v1, "iccState":Ljava/lang/String;
    const/4 v2, 0x0

    .line 344
    .local v2, "phoneId":I
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 345
    const-string/jumbo v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 346
    const/4 v3, 0x0

    const-string/jumbo v4, "phone"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 347
    iget-object v3, p0, Lcom/sec/internal/ims/core/iil/IilManager$2;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    iget v3, v3, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SimStateChanaged: phoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IilManager"

    invoke-static {v5, v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 348
    iget-object v3, p0, Lcom/sec/internal/ims/core/iil/IilManager$2;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    iget v3, v3, Lcom/sec/internal/ims/core/iil/IilManager;->mSlotId:I

    if-ne v2, v3, :cond_0

    .line 349
    iget-object v3, p0, Lcom/sec/internal/ims/core/iil/IilManager$2;->this$0:Lcom/sec/internal/ims/core/iil/IilManager;

    const/16 v4, 0x9

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/core/iil/IilManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/iil/IilManager;->sendMessage(Landroid/os/Message;)Z

    .line 352
    :cond_0
    return-void
.end method
