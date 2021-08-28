.class Lcom/sec/internal/ims/servicemodules/csh/VideoShare$1;
.super Ljava/lang/Object;
.source "VideoShare.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->doStopSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    .line 704
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    .line 713
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "stopVshSession onFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$500(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 715
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 707
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "stopVshSession  onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->sessionTerminatedByStack()V

    .line 709
    return-void
.end method
