.class Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$3;
.super Landroid/content/BroadcastReceiver;
.source "OMANetAPIHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->registerLowStorageReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    .line 901
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$3;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 904
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$3;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 905
    return-void
.end method
