.class Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$1;
.super Ljava/lang/Object;
.source "CloudMessageServiceWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    .line 224
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$1;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 228
    invoke-static {}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "service connect :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$1;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {p2}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->access$102(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;Lcom/sec/ims/ICentralMsgStoreService;)Lcom/sec/ims/ICentralMsgStoreService;

    .line 238
    invoke-static {}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$1;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    const-string v1, "SimReady"

    const-string v2, "CmsProfileEnable"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->access$300(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    goto :goto_1

    .line 242
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$1;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->access$400(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V

    .line 245
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 249
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 253
    invoke-static {}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "service disconnect :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$1;->this$0:Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->access$102(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;Lcom/sec/ims/ICentralMsgStoreService;)Lcom/sec/ims/ICentralMsgStoreService;

    .line 255
    return-void
.end method
