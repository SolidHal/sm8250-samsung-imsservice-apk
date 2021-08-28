.class Lcom/sec/internal/ims/core/imslogger/ExternalPackage$1;
.super Landroid/content/BroadcastReceiver;
.source "ExternalPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->registerPackageAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/imslogger/ExternalPackage;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/imslogger/ExternalPackage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/imslogger/ExternalPackage;

    .line 59
    iput-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ExternalPackage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ExternalPackage;

    invoke-static {v1}, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->access$000(Lcom/sec/internal/ims/core/imslogger/ExternalPackage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ExternalPackage;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    sget-object v2, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->NOT_INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    .line 67
    :goto_0
    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->access$102(Lcom/sec/internal/ims/core/imslogger/ExternalPackage;Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;)Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    .line 69
    invoke-static {}, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ExternalPackage;

    invoke-static {v3}, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->access$000(Lcom/sec/internal/ims/core/imslogger/ExternalPackage;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ExternalPackage;

    invoke-static {v3}, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->access$100(Lcom/sec/internal/ims/core/imslogger/ExternalPackage;)Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1
    return-void
.end method
