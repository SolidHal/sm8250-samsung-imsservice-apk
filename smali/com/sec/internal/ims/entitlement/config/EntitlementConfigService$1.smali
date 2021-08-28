.class Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$1;
.super Landroid/content/BroadcastReceiver;
.source "EntitlementConfigService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    .line 74
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$1;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 77
    invoke-static {}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$1;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->access$100(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;)Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " DEVICE_CONFIG_UPDATED result ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "request_status"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "],  errorcode ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string/jumbo v4, "orig_error_code"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 83
    const/high16 v0, 0x14020000

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RESULT:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",ERRC:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.sec.vsim.ericssonnsds.REFRESH_DEVICE_CONFIG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.sec.vsim.ericssonnsds.RETRY_DEVICE_CONFIG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    :cond_1
    const-string v0, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 90
    .local v0, "simSlotIdx":I
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$1;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->access$200(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;)Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;

    move-result-object v1

    const/16 v2, 0x6b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 91
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$1;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->access$200(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;)Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 93
    .end local v0    # "simSlotIdx":I
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    :goto_0
    return-void
.end method
