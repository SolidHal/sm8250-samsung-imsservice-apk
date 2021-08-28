.class Lcom/sec/sve/SecVideoEngineManager$1;
.super Ljava/lang/Object;
.source "SecVideoEngineManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sve/SecVideoEngineManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/sve/SecVideoEngineManager;


# direct methods
.method constructor <init>(Lcom/sec/sve/SecVideoEngineManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/sve/SecVideoEngineManager;

    .line 31
    iput-object p1, p0, Lcom/sec/sve/SecVideoEngineManager$1;->this$0:Lcom/sec/sve/SecVideoEngineManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 35
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager$1;->this$0:Lcom/sec/sve/SecVideoEngineManager;

    invoke-static {v0}, Lcom/sec/sve/SecVideoEngineManager;->access$000(Lcom/sec/sve/SecVideoEngineManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager$1;->this$0:Lcom/sec/sve/SecVideoEngineManager;

    invoke-static {p2}, Lcom/sec/sve/ISecVideoEngineService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sve/ISecVideoEngineService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/sve/SecVideoEngineManager;->access$102(Lcom/sec/sve/SecVideoEngineManager;Lcom/sec/sve/ISecVideoEngineService;)Lcom/sec/sve/ISecVideoEngineService;

    .line 37
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager$1;->this$0:Lcom/sec/sve/SecVideoEngineManager;

    invoke-static {v0}, Lcom/sec/sve/SecVideoEngineManager;->access$200(Lcom/sec/sve/SecVideoEngineManager;)Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;->onConnected()V

    .line 38
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 43
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager$1;->this$0:Lcom/sec/sve/SecVideoEngineManager;

    invoke-static {v0}, Lcom/sec/sve/SecVideoEngineManager;->access$000(Lcom/sec/sve/SecVideoEngineManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager$1;->this$0:Lcom/sec/sve/SecVideoEngineManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/sve/SecVideoEngineManager;->access$102(Lcom/sec/sve/SecVideoEngineManager;Lcom/sec/sve/ISecVideoEngineService;)Lcom/sec/sve/ISecVideoEngineService;

    .line 45
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager$1;->this$0:Lcom/sec/sve/SecVideoEngineManager;

    invoke-static {v0}, Lcom/sec/sve/SecVideoEngineManager;->access$200(Lcom/sec/sve/SecVideoEngineManager;)Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;->onDisconnected()V

    .line 46
    return-void
.end method
