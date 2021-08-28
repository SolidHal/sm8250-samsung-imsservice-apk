.class Lcom/sec/internal/ims/servicemodules/csh/ImageShare$TransferCompleteState;
.super Lcom/sec/internal/helper/State;
.source "ImageShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransferCompleteState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$TransferCompleteState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;Lcom/sec/internal/ims/servicemodules/csh/ImageShare$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    .param p2, "x1"    # Lcom/sec/internal/ims/servicemodules/csh/ImageShare$1;

    .line 435
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$TransferCompleteState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$TransferCompleteState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    const/16 v1, 0xd

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareState:I

    .line 439
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$TransferCompleteState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$100(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$TransferCompleteState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->notifyContentChange(Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;)V

    .line 440
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 444
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransferCompleteState Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/4 v0, 0x1

    .line 446
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    .line 452
    const/4 v0, 0x0

    goto :goto_0

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$TransferCompleteState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$1400(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 449
    nop

    .line 455
    :goto_0
    return v0
.end method
