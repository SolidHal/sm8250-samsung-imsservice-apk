.class Lcom/sec/internal/ims/servicemodules/csh/VideoShare$PreTerminatedLocalState;
.super Lcom/sec/internal/helper/State;
.source "VideoShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreTerminatedLocalState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)V
    .locals 0

    .line 646
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$PreTerminatedLocalState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;Lcom/sec/internal/ims/servicemodules/csh/VideoShare$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    .param p2, "x1"    # Lcom/sec/internal/ims/servicemodules/csh/VideoShare$1;

    .line 646
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$PreTerminatedLocalState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 649
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$PreTerminatedLocalState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$100(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v0

    const/16 v1, 0xf

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareState:I

    .line 650
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$PreTerminatedLocalState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$700(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$PreTerminatedLocalState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->notifyContentChange(Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;)V

    .line 651
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 655
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreTerminatedLocalState Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v0, 0x1

    .line 657
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    .line 663
    const/4 v0, 0x0

    goto :goto_0

    .line 659
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$PreTerminatedLocalState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$500(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 660
    nop

    .line 666
    :goto_0
    return v0
.end method
