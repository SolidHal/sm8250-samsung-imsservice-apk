.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CapabilityProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ShareServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    .line 1022
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1025
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1026
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShareServiceBroadcastReceiver: action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityProvider"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.CSH_SERVICE_NOT_READY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1029
    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.CSH_SERVICE_NOT_READY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1030
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->access$202(Z)Z

    .line 1031
    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->access$302(Z)Z

    .line 1032
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->access$400(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    .line 1034
    :cond_1
    return-void
.end method
