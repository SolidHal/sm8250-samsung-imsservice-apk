.class Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;
.super Lcom/sec/internal/helper/State;
.source "ImageShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InProgressState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;Lcom/sec/internal/ims/servicemodules/csh/ImageShare$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    .param p2, "x1"    # Lcom/sec/internal/ims/servicemodules/csh/ImageShare$1;

    .line 380
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareState:I

    .line 384
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$100(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->notifyContentChange(Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;)V

    .line 385
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 389
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InProgressState Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v0, 0x1

    .line 391
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 426
    const/4 v0, 0x0

    goto :goto_0

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$1200(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 424
    goto :goto_0

    .line 420
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$300(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 421
    goto :goto_0

    .line 393
    :cond_2
    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mSessionId:I

    new-instance v3, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState$1;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState$1;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;)V

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;)V

    .line 417
    .local v1, "params":Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$200(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->stopIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V

    .line 418
    nop

    .line 429
    .end local v1    # "params":Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;
    :goto_0
    return v0
.end method
