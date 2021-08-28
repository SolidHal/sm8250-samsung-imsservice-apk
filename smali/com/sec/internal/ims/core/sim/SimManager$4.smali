.class Lcom/sec/internal/ims/core/sim/SimManager$4;
.super Landroid/content/BroadcastReceiver;
.source "SimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/sim/SimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/sim/SimManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/sim/SimManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/sim/SimManager;

    .line 1588
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$4;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1591
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1592
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1593
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager$4;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->access$702(Lcom/sec/internal/ims/core/sim/SimManager;Z)Z

    goto :goto_0

    .line 1594
    :cond_0
    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1595
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager$4;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/sim/SimManager;->access$702(Lcom/sec/internal/ims/core/sim/SimManager;Z)Z

    .line 1597
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager$4;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/sim/SimManager;->access$100(Lcom/sec/internal/ims/core/sim/SimManager;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsGuestMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimManager$4;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {v3}, Lcom/sec/internal/ims/core/sim/SimManager;->access$700(Lcom/sec/internal/ims/core/sim/SimManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SimManager"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1598
    return-void
.end method
