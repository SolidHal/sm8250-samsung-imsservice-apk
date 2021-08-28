.class Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$1;
.super Ljava/lang/Object;
.source "OpenApiServiceModule.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->registerIncomingSipMessageListener(Lcom/sec/ims/openapi/ISipDialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

.field final synthetic val$listener:Lcom/sec/ims/openapi/ISipDialogListener;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;Lcom/sec/ims/openapi/ISipDialogListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    .line 151
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$1;->val$listener:Lcom/sec/ims/openapi/ISipDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binder died, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$1;->val$listener:Lcom/sec/ims/openapi/ISipDialogListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpenApiServiceModule"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->access$000(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    move-result-object v0

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->access$000(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$1;->val$listener:Lcom/sec/ims/openapi/ISipDialogListener;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;->unregister(Landroid/os/IInterface;)Z

    .line 157
    monitor-exit v0

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
