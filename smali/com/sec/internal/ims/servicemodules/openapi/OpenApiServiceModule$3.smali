.class Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;
.super Ljava/lang/Object;
.source "OpenApiServiceModule.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->connectImsService()V
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

    .line 297
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 301
    const-string v0, "OpenApiServiceModule"

    const-string v1, "Connected to ImsService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {p2}, Lcom/sec/ims/IImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->access$302(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;Lcom/sec/ims/IImsService;)Lcom/sec/ims/IImsService;

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->access$400(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->access$400(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IDialogEventListener;

    .line 306
    .local v1, "temp":Lcom/sec/ims/IDialogEventListener;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->access$300(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Lcom/sec/ims/IImsService;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->access$500(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)I

    move-result v3

    invoke-interface {v2, v3, v1}, Lcom/sec/ims/IImsService;->registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    .line 307
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->access$400(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 308
    nop

    .end local v1    # "temp":Lcom/sec/ims/IDialogEventListener;
    goto :goto_0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->access$600(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->access$600(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IImsRegistrationListener;

    .line 313
    .local v1, "temp":Lcom/sec/ims/IImsRegistrationListener;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->access$300(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Lcom/sec/ims/IImsService;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/ims/IImsService;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 314
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->access$600(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    nop

    .end local v1    # "temp":Lcom/sec/ims/IImsRegistrationListener;
    goto :goto_1

    .line 319
    :cond_1
    goto :goto_2

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 320
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 324
    const-string v0, "OpenApiServiceModule"

    const-string v1, "Disconnected from ImsService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->access$302(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;Lcom/sec/ims/IImsService;)Lcom/sec/ims/IImsService;

    .line 326
    return-void
.end method
