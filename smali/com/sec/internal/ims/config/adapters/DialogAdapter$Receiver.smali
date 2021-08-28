.class Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "DialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/DialogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;

.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V
    .locals 1

    .line 156
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 157
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 158
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;->mIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {v1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$500(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    .line 164
    invoke-static {v0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$600(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sim state: HANDLE_SIM_STATE_ABSENT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    const/4 v1, 0x6

    invoke-static {v0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$600(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->sendMessage(Landroid/os/Message;)Z

    .line 168
    :cond_0
    return-void
.end method
