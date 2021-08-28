.class Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;
.super Lcom/sec/internal/helper/State;
.source "VideoShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingPendingState"
.end annotation


# instance fields
.field acceptByUser:Z

.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    .line 423
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->acceptByUser:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;Lcom/sec/internal/ims/servicemodules/csh/VideoShare$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    .param p2, "x1"    # Lcom/sec/internal/ims/servicemodules/csh/VideoShare$1;

    .line 422
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$100(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareState:I

    .line 428
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$700(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->putSession(Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;)V

    .line 429
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$700(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->notifyContentChange(Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;)V

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->acceptByUser:Z

    .line 431
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 435
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IncomingPendingState Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v0, 0x1

    .line 437
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 499
    :pswitch_0
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 495
    :pswitch_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$500(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 496
    goto/16 :goto_1

    .line 443
    :pswitch_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$100(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v1

    sget-object v2, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    invoke-virtual {v2}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->toInt()I

    move-result v2

    iput v2, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 444
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$500(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 445
    goto/16 :goto_1

    .line 439
    :pswitch_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$1000(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 440
    goto/16 :goto_1

    .line 468
    :pswitch_4
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->acceptByUser:Z

    if-nez v1, :cond_0

    .line 469
    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    .line 470
    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$400(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)I

    move-result v2

    new-instance v3, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState$1;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState$1;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;)V

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;)V

    .line 484
    .local v1, "rejectParams":Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$300(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->rejectVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;)V

    .line 485
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$100(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v2

    sget-object v3, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->REJECTED_BY_USER:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->toInt()I

    move-result v3

    iput v3, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 486
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$1100(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 487
    .end local v1    # "rejectParams":Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;
    goto/16 :goto_1

    .line 488
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$1300(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)V

    .line 489
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$100(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v1

    sget-object v2, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    invoke-virtual {v2}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->toInt()I

    move-result v2

    iput v2, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 490
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$1100(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 492
    goto :goto_1

    .line 456
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/AsyncResult;

    .line 457
    .local v1, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v2, v1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;

    .line 458
    .local v2, "sessionResult":Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;
    iget v3, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;->mSessionNumber:I

    if-ltz v3, :cond_2

    iget-object v3, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;->mReason:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->SUCCESS:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 463
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$1000(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 465
    goto :goto_1

    .line 460
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$100(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v3

    sget-object v4, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->FAILED_SHARING:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    invoke-virtual {v4}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->toInt()I

    move-result v4

    iput v4, v3, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 461
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$500(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_1

    .line 448
    .end local v1    # "ar":Lcom/sec/internal/helper/AsyncResult;
    .end local v2    # "sessionResult":Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;
    :pswitch_6
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    const/4 v2, 0x6

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    .line 449
    .local v1, "cb":Landroid/os/Message;
    new-instance v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$400(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)I

    move-result v3

    invoke-direct {v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;-><init>(ILandroid/os/Message;)V

    .line 451
    .local v2, "aceeptParams":Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$300(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->acceptVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;)V

    .line 452
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->acceptByUser:Z

    .line 453
    nop

    .line 502
    .end local v1    # "cb":Landroid/os/Message;
    .end local v2    # "aceeptParams":Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;
    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
