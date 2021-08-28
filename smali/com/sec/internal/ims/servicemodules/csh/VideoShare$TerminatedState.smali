.class Lcom/sec/internal/ims/servicemodules/csh/VideoShare$TerminatedState;
.super Lcom/sec/internal/helper/State;
.source "VideoShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TerminatedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$TerminatedState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;Lcom/sec/internal/ims/servicemodules/csh/VideoShare$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    .param p2, "x1"    # Lcom/sec/internal/ims/servicemodules/csh/VideoShare$1;

    .line 675
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$TerminatedState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 678
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$TerminatedState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$100(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v0

    const/16 v1, 0xe

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareState:I

    .line 679
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$TerminatedState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$700(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$TerminatedState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->notifyContentChange(Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;)V

    .line 680
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$TerminatedState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$700(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$TerminatedState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$400(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->deleteSession(I)V

    .line 681
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 685
    const/4 v0, 0x1

    .line 686
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    .line 689
    const/4 v0, 0x0

    .line 692
    return v0
.end method
