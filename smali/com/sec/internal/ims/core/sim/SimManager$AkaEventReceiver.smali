.class Lcom/sec/internal/ims/core/sim/SimManager$AkaEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/sim/SimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AkaEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/sim/SimManager;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/core/sim/SimManager;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$AkaEventReceiver;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/sim/SimManager;Lcom/sec/internal/ims/core/sim/SimManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/core/sim/SimManager;
    .param p2, "x1"    # Lcom/sec/internal/ims/core/sim/SimManager$1;

    .line 329
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager$AkaEventReceiver;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 332
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent received : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "id"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string v1, "com.sec.imsservice.AKA_CHALLENGE_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager$AkaEventReceiver;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManager;->access$200(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimManager$SoftphoneAccount;

    move-result-object v2

    iget v2, v2, Lcom/sec/internal/ims/core/sim/SimManager$SoftphoneAccount;->mId:I

    if-ne v1, v2, :cond_0

    .line 336
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager$AkaEventReceiver;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    const-string/jumbo v2, "result"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->access$300(Lcom/sec/internal/ims/core/sim/SimManager;Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_0
    const-string v1, "com.sec.imsservice.AKA_CHALLENGE_FAILED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager$AkaEventReceiver;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->access$300(Lcom/sec/internal/ims/core/sim/SimManager;Ljava/lang/String;)V

    .line 340
    :cond_1
    :goto_0
    return-void
.end method
