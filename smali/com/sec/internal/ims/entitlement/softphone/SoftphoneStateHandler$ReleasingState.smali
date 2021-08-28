.class Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReleasingState;
.super Lcom/sec/internal/helper/State;
.source "SoftphoneStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReleasingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V
    .locals 0

    .line 785
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReleasingState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;
    .param p2, "x1"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;

    .line 785
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReleasingState;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 788
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReleasingState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReleasingState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

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

    .line 789
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 793
    const/4 v0, 0x1

    .line 794
    .local v0, "retVal":Z
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReleasingState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReleasingState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

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

    .line 795
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    const/4 v3, 0x5

    const/16 v4, 0x69

    if-eq v1, v3, :cond_5

    if-eq v1, v4, :cond_4

    const/16 v3, 0x3f9

    if-eq v1, v3, :cond_3

    const/16 v2, 0x40a

    if-eq v1, v2, :cond_2

    const/16 v3, 0x12

    if-eq v1, v3, :cond_1

    const/16 v3, 0x13

    if-eq v1, v3, :cond_0

    .line 837
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 807
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    .line 808
    .local v1, "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReleasingState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v2, v4, v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 809
    .local v2, "onComplete":Landroid/os/Message;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 810
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    .line 811
    goto/16 :goto_0

    .line 834
    .end local v1    # "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    .end local v2    # "onComplete":Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReleasingState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    const/4 v2, 0x0

    const-string v3, "com.samsung.softphone.action.ACCOUNT_IDENTITY_RELEASED"

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    goto :goto_0

    .line 821
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 822
    .local v1, "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    const-class v2, Lcom/sec/internal/ims/entitlement/softphone/responses/AkaAuthenticationResponse;

    const/16 v3, 0xc8

    .line 823
    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/entitlement/softphone/responses/AkaAuthenticationResponse;

    .line 824
    .local v2, "response":Lcom/sec/internal/ims/entitlement/softphone/responses/AkaAuthenticationResponse;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 825
    .local v3, "data":Landroid/os/Bundle;
    const-string v4, "nonce"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 826
    .local v4, "nonce":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReleasingState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v5, v5, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v2, v6, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->processAkaChallengeResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/AkaAuthenticationResponse;ILjava/lang/String;)V

    .line 827
    goto :goto_0

    .line 830
    .end local v1    # "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .end local v2    # "response":Lcom/sec/internal/ims/entitlement/softphone/responses/AkaAuthenticationResponse;
    .end local v3    # "data":Landroid/os/Bundle;
    .end local v4    # "nonce":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReleasingState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    sget-object v3, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v3, v3, v2

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->releaseImsNetworkIdentities(IJ)V

    .line 831
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReleasingState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "com.samsung.softphone.action.ACCOUNT_DEREGISTERED"

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    goto :goto_0

    .line 814
    :cond_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 815
    .restart local v1    # "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    const-class v2, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;

    const/16 v3, 0xcc

    .line 816
    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;

    .line 817
    .local v2, "response":Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReleasingState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v3, v3, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->processReleaseImsNetworkIdentitiesResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;I)V

    .line 818
    goto :goto_0

    .line 802
    .end local v1    # "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .end local v2    # "response":Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;
    :cond_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    .line 803
    .local v1, "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReleasingState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v4, v3, v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    .line 804
    goto :goto_0

    .line 797
    .end local v1    # "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    :cond_6
    new-instance v1, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    const-string v3, "Logout is in progress. Please try again later."

    invoke-direct {v1, v2, v2, v3}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    .line 799
    .local v1, "noti":Lcom/sec/vsim/attsoftphone/data/GeneralNotify;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReleasingState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v2, v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    .line 800
    nop

    .line 841
    .end local v1    # "noti":Lcom/sec/vsim/attsoftphone/data/GeneralNotify;
    :goto_0
    return v0
.end method
