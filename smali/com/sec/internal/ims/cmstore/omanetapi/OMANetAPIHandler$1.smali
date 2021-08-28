.class Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$1;
.super Ljava/lang/Object;
.source "OMANetAPIHandler.java"

# interfaces
.implements Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    .line 102
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoveOn()V
    .locals 4

    .line 105
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v1, "Move on: start sync"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;)Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isMultiLineSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    new-instance v1, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;)Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getUserTelCtn()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V

    .line 109
    :cond_0
    return-void
.end method
