.class Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ActivatedState;
.super Lcom/sec/internal/helper/State;
.source "SoftphoneStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivatedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ActivatedState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;
    .param p2, "x1"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;

    .line 547
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ActivatedState;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 550
    const/4 v0, 0x1

    .line 551
    .local v0, "retVal":Z
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ActivatedState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ActivatedState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 552
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xe

    if-eq v1, v2, :cond_8

    const/16 v2, 0x3f6

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_7

    const/16 v2, 0x10

    if-eq v1, v2, :cond_6

    const/16 v2, 0x11

    if-eq v1, v2, :cond_5

    const/16 v2, 0x3f8

    if-eq v1, v2, :cond_4

    const/16 v2, 0x3f9

    if-eq v1, v2, :cond_3

    const/16 v2, 0x404

    if-eq v1, v2, :cond_1

    const/16 v2, 0x405

    if-eq v1, v2, :cond_0

    .line 585
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 582
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ActivatedState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->deferMessage(Landroid/os/Message;)V

    .line 583
    goto/16 :goto_1

    .line 579
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ActivatedState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->reLogin(IZ)V

    .line 580
    goto :goto_1

    .line 574
    :cond_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x580

    if-eq v1, v2, :cond_9

    .line 575
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ActivatedState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyRegisterStatus(ZLjava/lang/String;)V

    goto :goto_1

    .line 563
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ActivatedState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "com.samsung.softphone.action.ACCOUNT_REGISTERED"

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ActivatedState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v2, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mRegisteredState:Lcom/sec/internal/helper/State;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 565
    goto :goto_1

    .line 557
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ActivatedState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->handleDeRegisterRequest()V

    .line 558
    goto :goto_1

    .line 560
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ActivatedState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->obtainPdCookies(I)V

    .line 561
    goto :goto_1

    .line 567
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ActivatedState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    const-string v2, "AKA failed."

    invoke-virtual {v1, v4, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyRegisterStatus(ZLjava/lang/String;)V

    .line 568
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ActivatedState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {v1, v4, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getAutoRetryComSet(ZZ)Z

    .line 569
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ActivatedState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->handleDeRegisterRequest()V

    .line 570
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ActivatedState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v2, 0x3fa

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->sendMessage(I)V

    .line 571
    goto :goto_1

    .line 554
    :cond_8
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ActivatedState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->handleTryRegisterRequest()V

    .line 555
    nop

    .line 589
    :cond_9
    :goto_1
    return v0
.end method
