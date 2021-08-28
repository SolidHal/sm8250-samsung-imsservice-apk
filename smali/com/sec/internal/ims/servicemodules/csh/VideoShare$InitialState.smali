.class Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;
.super Lcom/sec/internal/helper/State;
.source "VideoShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;Lcom/sec/internal/ims/servicemodules/csh/VideoShare$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    .param p2, "x1"    # Lcom/sec/internal/ims/servicemodules/csh/VideoShare$1;

    .line 301
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$100(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareState:I

    .line 305
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 309
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InitialState Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v0, 0x1

    .line 311
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_4

    if-eq v1, v3, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 345
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$700(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$100(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    .line 339
    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$100(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    .line 340
    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$100(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    .line 338
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->notityIncommingSession(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    .line 341
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$800(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 342
    goto :goto_1

    .line 326
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/AsyncResult;

    .line 327
    .local v1, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v2, v1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;

    .line 328
    .local v2, "sessionResult":Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    iget v4, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;->mSessionNumber:I

    invoke-static {v3, v4}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$402(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;I)I

    .line 329
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$400(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)I

    move-result v3

    if-ltz v3, :cond_3

    iget-object v3, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;->mReason:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->SUCCESS:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 333
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$600(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 335
    goto :goto_1

    .line 330
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$100(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v3

    sget-object v4, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->FAILED_INITIATION:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    invoke-virtual {v4}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->toInt()I

    move-result v4

    iput v4, v3, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 331
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$500(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_1

    .line 313
    .end local v1    # "ar":Lcom/sec/internal/helper/AsyncResult;
    .end local v2    # "sessionResult":Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 319
    .local v1, "cb":Landroid/os/Message;
    new-instance v2, Lcom/sec/internal/ims/servicemodules/csh/event/VshStartSessionParams;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    .line 320
    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$100(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/csh/event/VshStartSessionParams;-><init>(Ljava/lang/String;Landroid/os/Message;)V

    .line 321
    .local v2, "params":Lcom/sec/internal/ims/servicemodules/csh/event/VshStartSessionParams;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->access$300(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->startVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/VshStartSessionParams;)V

    .line 323
    nop

    .line 348
    .end local v1    # "cb":Landroid/os/Message;
    .end local v2    # "params":Lcom/sec/internal/ims/servicemodules/csh/event/VshStartSessionParams;
    :goto_1
    return v0
.end method
