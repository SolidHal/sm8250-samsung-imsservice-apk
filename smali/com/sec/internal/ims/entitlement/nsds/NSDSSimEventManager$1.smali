.class Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager$1;
.super Landroid/content/BroadcastReceiver;
.source "NSDSSimEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    .line 80
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceReadyReceiver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NSDSSimEventManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->access$000(Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 86
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->access$100(Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;I)V

    .line 87
    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method
