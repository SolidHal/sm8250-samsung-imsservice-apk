.class Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AudioInterfaceHandler;
.super Landroid/os/Handler;
.source "ResipVolteHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioInterfaceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 3064
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AudioInterfaceHandler;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;

    .line 3065
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3066
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 3070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipVolteHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 3077
    const-string v0, "Invalid event"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3074
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$AudioInterfaceHandler;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/AsyncResult;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;->access$200(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler;Lcom/sec/internal/helper/AsyncResult;)V

    .line 3075
    nop

    .line 3080
    :goto_0
    return-void
.end method
