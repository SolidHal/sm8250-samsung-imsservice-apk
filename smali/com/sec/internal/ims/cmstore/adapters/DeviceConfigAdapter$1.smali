.class Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceConfigAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    .line 173
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter$1;->this$0:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-static {}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_BOOT_COMPLETED received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter$1;->this$0:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->parseDeviceConfig()V

    .line 180
    :cond_0
    return-void
.end method
