.class Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;
.super Lcom/sec/internal/helper/State;
.source "ImageShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingPendingState"
.end annotation


# instance fields
.field acceptByUser:Z

.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    .line 279
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->acceptByUser:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;Lcom/sec/internal/ims/servicemodules/csh/ImageShare$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    .param p2, "x1"    # Lcom/sec/internal/ims/servicemodules/csh/ImageShare$1;

    .line 278
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareState:I

    .line 284
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$100(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->putSession(Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;)V

    .line 285
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$100(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->notifyContentChange(Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;)V

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->acceptByUser:Z

    .line 288
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 292
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IncomingPendingState Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v0, 0x1

    .line 294
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 371
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 367
    :pswitch_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$300(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 368
    goto/16 :goto_2

    .line 296
    :pswitch_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$800(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 297
    goto/16 :goto_2

    .line 333
    :pswitch_2
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->acceptByUser:Z

    if-nez v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$1000(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)V

    .line 335
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    sget-object v2, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_BY_USER:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 336
    invoke-virtual {v2}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 335
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 337
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$300(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_2

    .line 339
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mSessionId:I

    new-instance v3, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState$1;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState$1;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;)V

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;)V

    .line 362
    .local v1, "params":Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$200(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->stopIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V

    .line 364
    .end local v1    # "params":Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;
    goto/16 :goto_2

    .line 320
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/AsyncResult;

    .line 321
    .local v1, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v2, v1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;

    .line 322
    .local v2, "sessionResult":Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;
    iget v3, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;->mSessionNumber:I

    if-ltz v3, :cond_2

    iget-object v3, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;->mReason:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->SUCCESS:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 328
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$800(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 330
    goto/16 :goto_2

    .line 324
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    sget-object v4, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->FAILED_SHARING:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 325
    invoke-virtual {v4}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 324
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 326
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$300(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_2

    .line 300
    .end local v1    # "ar":Lcom/sec/internal/helper/AsyncResult;
    .end local v2    # "sessionResult":Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;
    :pswitch_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$100(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->getMaxSize()J

    move-result-wide v1

    .line 301
    .local v1, "maxSize":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v3, v3, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataSize:J

    cmp-long v3, v3, v1

    if-gez v3, :cond_3

    goto :goto_1

    .line 308
    :cond_3
    sget-object v3, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File size("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v5, v5, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataSize:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ") is larger than Max size("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$100(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v4, v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->notifyLimitExceeded(JLcom/sec/ims/util/ImsUri;)V

    .line 312
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    sget-object v4, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_MAX_SIZE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 313
    invoke-virtual {v4}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 312
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 314
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$300(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 317
    goto :goto_2

    .line 302
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 303
    .local v3, "cb":Landroid/os/Message;
    new-instance v4, Lcom/sec/internal/ims/servicemodules/csh/event/IshAcceptSessionParams;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mSessionId:I

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v3}, Lcom/sec/internal/ims/servicemodules/csh/event/IshAcceptSessionParams;-><init>(ILjava/lang/String;Landroid/os/Message;)V

    .line 305
    .local v4, "aceeptParams":Lcom/sec/internal/ims/servicemodules/csh/event/IshAcceptSessionParams;
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->access$200(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->acceptIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/IshAcceptSessionParams;)V

    .line 306
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->acceptByUser:Z

    .line 307
    .end local v3    # "cb":Landroid/os/Message;
    .end local v4    # "aceeptParams":Lcom/sec/internal/ims/servicemodules/csh/event/IshAcceptSessionParams;
    nop

    .line 374
    .end local v1    # "maxSize":J
    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
