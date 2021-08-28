.class Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState$1;
.super Ljava/lang/Object;
.source "VideoShare.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState;->processMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState;

    .line 384
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState$1;->this$1:Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    .line 393
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancelVshSession onFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState$1;->this$1:Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState$1;->this$1:Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$500(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 395
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 387
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancelVshSession  onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState$1;->this$1:Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->sessionTerminatedByStack()V

    .line 389
    return-void
.end method
