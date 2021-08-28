.class Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;
.super Ljava/lang/Object;
.source "UtServiceModule.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    .line 1433
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 1436
    const-string v0, "UtServiceModule"

    const-string v1, "connected"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {p2}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->access$402(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Lcom/sec/vsim/attsoftphone/ISoftphoneService;)Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    .line 1438
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->connected()V

    .line 1439
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->access$502(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Z)Z

    .line 1440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Softphone Service bind"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->access$500(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 1445
    const-string v0, "UtServiceModule"

    const-string v1, "Disconnected"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->access$402(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Lcom/sec/vsim/attsoftphone/ISoftphoneService;)Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    .line 1447
    return-void
.end method
