.class Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EucDisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EucNotificationReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;
    .param p2, "x1"    # Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$1;

    .line 97
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;-><init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EucNotificationReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v1, "com.sec.internal.ims.servicemodules.euc.dialog.action.SHOW_EUC_DIALOG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->access$300(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver$1;

    invoke-direct {v2, p0, p2}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver$1;-><init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    :cond_0
    return-void
.end method
