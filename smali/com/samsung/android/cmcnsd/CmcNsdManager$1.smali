.class Lcom/samsung/android/cmcnsd/CmcNsdManager$1;
.super Ljava/lang/Object;
.source "CmcNsdManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcnsd/CmcNsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcnsd/CmcNsdManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/cmcnsd/CmcNsdManager;

    .line 55
    iput-object p1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$1;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 58
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$1;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-static {v0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->access$000(Lcom/samsung/android/cmcnsd/CmcNsdManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected() name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$1;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-static {p2}, Lcom/samsung/android/cmcnsd/INsdService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cmcnsd/INsdService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->access$102(Lcom/samsung/android/cmcnsd/CmcNsdManager;Lcom/samsung/android/cmcnsd/INsdService;)Lcom/samsung/android/cmcnsd/INsdService;

    .line 61
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$1;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-static {v0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->access$100(Lcom/samsung/android/cmcnsd/CmcNsdManager;)Lcom/samsung/android/cmcnsd/INsdService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$1;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-static {v0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->access$000(Lcom/samsung/android/cmcnsd/CmcNsdManager;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceConnected() failed to get proxy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$1;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-static {v0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->access$100(Lcom/samsung/android/cmcnsd/CmcNsdManager;)Lcom/samsung/android/cmcnsd/INsdService;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$1;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$1;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-static {v2}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->access$200(Lcom/samsung/android/cmcnsd/CmcNsdManager;)Lcom/samsung/android/cmcnsd/INsdNetworkCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/cmcnsd/INsdService;->registerNetworkCallback(ILcom/samsung/android/cmcnsd/INsdNetworkCallback;)Z

    .line 67
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$1;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-static {v0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->access$300(Lcom/samsung/android/cmcnsd/CmcNsdManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$1;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-static {v1}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->access$000(Lcom/samsung/android/cmcnsd/CmcNsdManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceConnected exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 75
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$1;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-static {v0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->access$000(Lcom/samsung/android/cmcnsd/CmcNsdManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected() name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/CmcNsdManager$1;->this$0:Lcom/samsung/android/cmcnsd/CmcNsdManager;

    invoke-static {v0}, Lcom/samsung/android/cmcnsd/CmcNsdManager;->access$400(Lcom/samsung/android/cmcnsd/CmcNsdManager;)V

    .line 77
    return-void
.end method
