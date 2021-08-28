.class Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$2;
.super Ljava/lang/Object;
.source "OpenApiServiceModule.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->connectVoLteService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    .line 256
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 260
    const-string v0, "OpenApiServiceModule"

    const-string v1, "Connected to VolteService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {p2}, Lcom/sec/ims/volte2/IVolteService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IVolteService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->access$102(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;Lcom/sec/ims/volte2/IVolteService;)Lcom/sec/ims/volte2/IVolteService;

    .line 262
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->access$100(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Lcom/sec/ims/volte2/IVolteService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get IVolteService with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void

    .line 267
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->access$200(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->access$200(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/volte2/IImsCallEventListener;

    .line 269
    .local v1, "temp":Lcom/sec/ims/volte2/IImsCallEventListener;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->access$100(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Lcom/sec/ims/volte2/IVolteService;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/ims/volte2/IVolteService;->registerForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    .line 270
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->access$200(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    nop

    .end local v1    # "temp":Lcom/sec/ims/volte2/IImsCallEventListener;
    goto :goto_0

    .line 275
    :cond_1
    goto :goto_1

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 276
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 280
    const-string v0, "OpenApiServiceModule"

    const-string v1, "Disconnected from VolteService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->access$102(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;Lcom/sec/ims/volte2/IVolteService;)Lcom/sec/ims/volte2/IVolteService;

    .line 282
    return-void
.end method
