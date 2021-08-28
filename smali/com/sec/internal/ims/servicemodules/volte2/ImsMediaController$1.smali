.class Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$1;
.super Landroid/os/Handler;
.source "ImsMediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Landroid/os/Looper;Lcom/sec/internal/helper/SimpleEventLog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 77
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 80
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 81
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 83
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;

    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->access$000(Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    .line 86
    nop

    .line 91
    :goto_0
    return-void
.end method
