.class Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;
.super Ljava/lang/Object;
.source "CmcSAManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/core/cmc/CmcSAManager;->connectToSamsungAccountService(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    .line 55
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 59
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {p2}, Lcom/msc/sa/aidl/ISAService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->access$002(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;

    .line 60
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->access$000(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    new-instance v1, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SACallback;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SACallback;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;)V

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->access$102(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/msc/sa/aidl/ISACallback;)Lcom/msc/sa/aidl/ISACallback;

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->access$000(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    iget-object v1, v1, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mAppId:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    iget-object v2, v2, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->mAppSecret:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    .line 64
    invoke-static {v3}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->access$300(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {v4}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->access$100(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/msc/sa/aidl/ISACallback;

    move-result-object v4

    .line 63
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/msc/sa/aidl/ISAService;->registerCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/msc/sa/aidl/ISACallback;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "regiCode":Ljava/lang/String;
    const-string v1, "CmcSAManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceConnected to SA : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string v3, "null"

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->access$402(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->access$500(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0    # "regiCode":Ljava/lang/String;
    goto :goto_1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 72
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 76
    const-string v0, "CmcSAManager"

    const-string/jumbo v1, "onServiceDisconnected to SA"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->access$000(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->access$000(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->access$400(Lcom/sec/internal/ims/core/cmc/CmcSAManager;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/msc/sa/aidl/ISAService;->unregisterCallback(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 84
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->access$002(Lcom/sec/internal/ims/core/cmc/CmcSAManager;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;

    .line 86
    :cond_0
    return-void
.end method
