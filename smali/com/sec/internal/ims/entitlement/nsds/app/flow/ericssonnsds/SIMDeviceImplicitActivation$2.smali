.class Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation$2;
.super Landroid/content/BroadcastReceiver;
.source "SIMDeviceImplicitActivation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->startGcmTokenWaitTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;

    .line 109
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation$2;->this$0:Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 112
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: timer expired for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.vsim.ericssonnsds.WAIT_GCM_TOKEN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation$2;->this$0:Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;->access$100(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceImplicitActivation;)V

    .line 116
    :cond_0
    return-void
.end method
