.class Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/adapters/DialogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogNotiReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Lcom/sec/internal/ims/config/adapters/DialogAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/adapters/DialogAdapter;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/adapters/DialogAdapter$1;

    .line 131
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;-><init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 133
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DialogNotiReceiver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, -0x1

    const-string/jumbo v3, "phone_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {v2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$200(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 139
    :cond_0
    const-string v1, "com.samsung.rcs.framework.dialogadapter.action.SHOW_TC_POPUP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {v1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$300(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 141
    :cond_1
    const-string v1, "com.samsung.rcs.framework.dialogadapter.action.CANCEL_TC_NOTIFICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$302(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)Z

    .line 143
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {v1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$400(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Landroid/app/NotificationManager;

    move-result-object v1

    const v2, 0xa807ad

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {v3}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$200(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 144
    :cond_2
    const-string v1, "com.samsung.rcs.framework.dialogadapter.action.SHOW_MSISDN_POPUP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {v1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$400(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Landroid/app/NotificationManager;

    move-result-object v1

    const v2, 0x3636a01

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {v3}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->access$200(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 146
    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$DialogNotiReceiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->sendEmptyMessage(I)Z

    .line 148
    :cond_3
    :goto_0
    return-void

    .line 137
    :cond_4
    :goto_1
    return-void
.end method
