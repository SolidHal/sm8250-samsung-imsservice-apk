.class Lcom/sec/internal/ims/config/ConfigProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "ConfigProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/config/ConfigProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/ConfigProvider;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/ConfigProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/ConfigProvider;

    .line 106
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigProvider$1;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const-string/jumbo v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "iccState":Ljava/lang/String;
    const/4 v1, 0x0

    const-string/jumbo v2, "phone"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 113
    .local v1, "phoneId":I
    const-string v2, "LOADED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConfigProvider["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SIM LOADED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigProvider$1;->this$0:Lcom/sec/internal/ims/config/ConfigProvider;

    const/4 v3, 0x0

    invoke-static {v2, p1, v1, v3}, Lcom/sec/internal/ims/config/ConfigProvider;->access$000(Lcom/sec/internal/ims/config/ConfigProvider;Landroid/content/Context;ILjava/util/List;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    .line 118
    .end local v0    # "iccState":Ljava/lang/String;
    .end local v1    # "phoneId":I
    :cond_0
    return-void
.end method
