.class Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$AirplaneState;
.super Lcom/sec/internal/helper/State;
.source "SoftphoneStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirplaneState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$AirplaneState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;
    .param p2, "x1"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;

    .line 707
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$AirplaneState;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 710
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$AirplaneState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$AirplaneState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$AirplaneState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$AirplaneState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->access$800(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->updateAccountStatus(Ljava/lang/String;I)V

    .line 714
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 718
    const/4 v0, 0x1

    .line 719
    .local v0, "retVal":Z
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$AirplaneState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$AirplaneState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

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

    .line 720
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    const/16 v3, 0x69

    if-eq v1, v2, :cond_4

    const/16 v2, 0x65

    if-eq v1, v2, :cond_3

    if-eq v1, v3, :cond_2

    const/16 v2, 0x3f9

    if-eq v1, v2, :cond_1

    const/16 v2, 0x408

    if-eq v1, v2, :cond_0

    .line 745
    const/4 v0, 0x0

    goto :goto_0

    .line 738
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$AirplaneState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v2, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    const/4 v6, 0x0

    aget-wide v6, v1, v6

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getImsNetworkIdentifiers(ZZIJI)V

    .line 739
    goto :goto_0

    .line 734
    :cond_1
    goto :goto_0

    .line 726
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 727
    .local v1, "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    const-class v2, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;

    const/16 v3, 0xcc

    .line 728
    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;

    .line 729
    .local v2, "response":Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$AirplaneState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v3, v3, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->processReleaseImsNetworkIdentitiesResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;I)V

    .line 730
    goto :goto_0

    .line 741
    .end local v1    # "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .end local v2    # "response":Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$AirplaneState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v2, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 742
    const/4 v0, 0x0

    .line 743
    goto :goto_0

    .line 722
    :cond_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    .line 723
    .local v1, "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$AirplaneState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    .line 724
    nop

    .line 749
    .end local v1    # "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    :goto_0
    return v0
.end method
