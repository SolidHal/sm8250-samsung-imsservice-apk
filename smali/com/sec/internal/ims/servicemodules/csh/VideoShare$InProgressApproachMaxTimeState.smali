.class Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InProgressApproachMaxTimeState;
.super Lcom/sec/internal/helper/State;
.source "VideoShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InProgressApproachMaxTimeState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InProgressApproachMaxTimeState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;Lcom/sec/internal/ims/servicemodules/csh/VideoShare$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    .param p2, "x1"    # Lcom/sec/internal/ims/servicemodules/csh/VideoShare$1;

    .line 572
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InProgressApproachMaxTimeState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .line 575
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 579
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InProgressApproachMaxTimeState Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v0, 0x1

    .line 581
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 602
    const/4 v0, 0x0

    goto :goto_0

    .line 588
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InProgressApproachMaxTimeState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$1600(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)V

    .line 589
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InProgressApproachMaxTimeState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$100(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v1

    sget-object v2, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    invoke-virtual {v2}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->toInt()I

    move-result v2

    iput v2, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 590
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InProgressApproachMaxTimeState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$1700(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 591
    goto :goto_0

    .line 596
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InProgressApproachMaxTimeState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$1300(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)V

    .line 597
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InProgressApproachMaxTimeState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$100(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v1

    sget-object v2, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    invoke-virtual {v2}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->toInt()I

    move-result v2

    iput v2, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 598
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InProgressApproachMaxTimeState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$1100(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 599
    goto :goto_0

    .line 583
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    .line 584
    .local v1, "orientation":Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InProgressApproachMaxTimeState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$300(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->setVshPhoneOrientation(Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;)V

    .line 585
    nop

    .line 605
    .end local v1    # "orientation":Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;
    :goto_0
    return v0
.end method
