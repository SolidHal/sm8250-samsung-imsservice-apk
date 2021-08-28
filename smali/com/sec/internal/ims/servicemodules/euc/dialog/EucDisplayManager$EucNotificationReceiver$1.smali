.class Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver$1;
.super Ljava/lang/Object;
.source "EucDisplayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;

    .line 103
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver$1;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver$1;->val$intent:Landroid/content/Intent;

    .line 107
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "euc_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 106
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->unmarshall([B)Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object v0

    .line 108
    .local v0, "key":Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver$1;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->access$100(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 109
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver$1;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->access$200(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver$1;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->access$200(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 112
    :cond_0
    return-void
.end method
