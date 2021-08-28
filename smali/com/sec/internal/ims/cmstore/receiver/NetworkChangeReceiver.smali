.class public Lcom/sec/internal/ims/cmstore/receiver/NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkChangeReceiver.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;


# direct methods
.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;)V
    .locals 1
    .param p1, "controller"    # Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 12
    const-class v0, Lcom/sec/internal/ims/cmstore/receiver/NetworkChangeReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/receiver/NetworkChangeReceiver;->TAG:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/receiver/NetworkChangeReceiver;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    .line 17
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 21
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/receiver/NetworkChangeReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receive intent=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/receiver/NetworkChangeReceiver;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onNetworkChangeDetected()V

    .line 23
    return-void
.end method
