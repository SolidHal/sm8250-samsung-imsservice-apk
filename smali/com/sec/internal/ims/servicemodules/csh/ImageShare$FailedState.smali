.class Lcom/sec/internal/ims/servicemodules/csh/ImageShare$FailedState;
.super Lcom/sec/internal/helper/State;
.source "ImageShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FailedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$FailedState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;Lcom/sec/internal/ims/servicemodules/csh/ImageShare$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    .param p2, "x1"    # Lcom/sec/internal/ims/servicemodules/csh/ImageShare$1;

    .line 513
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$FailedState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 516
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$FailedState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    const/16 v1, 0xc

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareState:I

    .line 517
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$FailedState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$100(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$FailedState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->notifyContentChange(Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;)V

    .line 518
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$FailedState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$100(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$FailedState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mSessionId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->deleteSession(I)V

    .line 519
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 523
    const/4 v0, 0x1

    .line 524
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    .line 527
    const/4 v0, 0x0

    .line 530
    return v0
.end method
