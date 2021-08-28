.class Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState$1;
.super Ljava/lang/Object;
.source "VideoShare.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->processMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;

    .line 471
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState$1;->this$1:Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    .line 480
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ICshSuccessCallback::onFailure Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState$1;->this$1:Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState$1;->this$1:Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$500(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 482
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 474
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ICshSuccessCallback::onSuccess Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState$1;->this$1:Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->sessionTerminatedByStack()V

    .line 476
    return-void
.end method
