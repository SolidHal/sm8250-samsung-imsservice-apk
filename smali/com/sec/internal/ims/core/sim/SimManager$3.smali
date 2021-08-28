.class Lcom/sec/internal/ims/core/sim/SimManager$3;
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

    .line 1544
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$3;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1547
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1548
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 1549
    .local v1, "intentPackageName":Ljava/lang/String;
    const-string v2, "com.google.android.gts.telephony"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1550
    return-void

    .line 1552
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x1f50b9c2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_3

    const v4, 0x5c1076e2

    if-eq v3, v4, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v5

    goto :goto_0

    :cond_3
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v6

    :goto_0
    const-string v3, "LOADED"

    const-string v4, "SimManager"

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    goto :goto_1

    .line 1562
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager$3;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManager;->access$500(Lcom/sec/internal/ims/core/sim/SimManager;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1563
    const-string v2, "Remove GTS package, SendMessage SIM LOAD again"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager$3;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {v2, v5}, Lcom/sec/internal/ims/core/sim/SimManager;->access$600(Lcom/sec/internal/ims/core/sim/SimManager;Z)V

    .line 1565
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager$3;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    sget-object v4, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object v4, v2, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 1566
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager$3;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-virtual {v2, v6, v3}, Lcom/sec/internal/ims/core/sim/SimManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/sim/SimManager;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1554
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager$3;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManager;->access$500(Lcom/sec/internal/ims/core/sim/SimManager;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1555
    const-string v2, "ADD GTS package, SendMessage SIM LOAD again"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager$3;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {v2, v6}, Lcom/sec/internal/ims/core/sim/SimManager;->access$600(Lcom/sec/internal/ims/core/sim/SimManager;Z)V

    .line 1557
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager$3;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    sget-object v4, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object v4, v2, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 1558
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager$3;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-virtual {v2, v6, v3}, Lcom/sec/internal/ims/core/sim/SimManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/sim/SimManager;->sendMessage(Landroid/os/Message;)Z

    .line 1572
    :cond_6
    :goto_1
    return-void
.end method
