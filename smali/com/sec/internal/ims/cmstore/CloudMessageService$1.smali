.class Lcom/sec/internal/ims/cmstore/CloudMessageService$1;
.super Landroid/content/BroadcastReceiver;
.source "CloudMessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/CloudMessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/CloudMessageService;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/CloudMessageService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/cmstore/CloudMessageService;

    .line 101
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService$1;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 104
    invoke-static {}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mJanskyIntentReceiver: onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService$1;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageService;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->access$100(Lcom/sec/internal/ims/cmstore/CloudMessageService;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService$1;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageService;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->access$200(Lcom/sec/internal/ims/cmstore/CloudMessageService;)Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->handleIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mJanskyIntentReceiver: CmsProfileEnabled false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return-void
.end method
