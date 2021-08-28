.class public Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;
.super Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;
.source "ImSessionDefaultState.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DefaultState"


# instance fields
.field private mIsTriggeredCapex:Z


# direct methods
.method constructor <init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "imSession"    # Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;-><init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 69
    return-void
.end method

.method private handleSendImResult(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;)V
    .locals 8
    .param p1, "strategyResponse"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .param p2, "imMsg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p3, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    .line 950
    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v0

    .line 951
    .local v0, "imError":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState$1;->$SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode:[I

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    const/16 v5, 0xbb9

    packed-switch v1, :pswitch_data_0

    .line 1016
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iput-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNewContactValueUri:Lcom/sec/ims/util/ImsUri;

    .line 1017
    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {p2, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    goto/16 :goto_0

    .line 1010
    :pswitch_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSendImMessageDone retry_after_regi msgId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 1011
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4, v5, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1012
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->incrementRetryCount()V

    .line 1013
    goto/16 :goto_0

    .line 1003
    :pswitch_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mRawHandle:Ljava/lang/Object;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->handleCloseSession(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    .line 1004
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    .line 1005
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iput-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNewContactValueUri:Lcom/sec/ims/util/ImsUri;

    .line 1006
    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {p2, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    .line 1007
    goto/16 :goto_0

    .line 994
    :pswitch_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iput-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNewContactValueUri:Lcom/sec/ims/util/ImsUri;

    .line 995
    instance-of v1, p2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz v1, :cond_0

    .line 996
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-object v2, p2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->handleUploadedFileFallback(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;)V

    goto/16 :goto_0

    .line 998
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v3, 0xbbf

    invoke-virtual {v2, v3, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 1000
    goto/16 :goto_0

    .line 988
    :pswitch_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSendImMessageDone retry_after_session msgId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 989
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4, v5, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 990
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->incrementRetryCount()V

    .line 991
    goto/16 :goto_0

    .line 982
    :pswitch_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSendImMessageDone retry with new contact, msgId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 983
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->incrementRetryCount()V

    .line 984
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2, v5, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 985
    goto/16 :goto_0

    .line 969
    :pswitch_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSendImMessageDone retry_after msgId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 970
    instance-of v1, p2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz v1, :cond_1

    .line 971
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mPhoneId:I

    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getCurrentRetryCount()I

    move-result v6

    invoke-interface {v1, v6, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getFtHttpSessionRetryTimer(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;)I

    move-result v1

    .line 972
    .local v1, "retryTimer":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    .line 973
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iput v1, v6, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRetryTimer:I

    .line 976
    .end local v1    # "retryTimer":I
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v6, v5, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRetryTimer:I

    int-to-long v6, v6

    mul-long/2addr v6, v2

    invoke-virtual {v1, v5, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 977
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->incrementRetryCount()V

    .line 978
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iput-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNewContactValueUri:Lcom/sec/ims/util/ImsUri;

    .line 979
    goto :goto_0

    .line 953
    :pswitch_6
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {p2, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    .line 955
    goto :goto_0

    .line 958
    :pswitch_7
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSendImMessageDone retry msgId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 959
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2, v5, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 960
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->incrementRetryCount()V

    .line 961
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iput-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNewContactValueUri:Lcom/sec/ims/util/ImsUri;

    .line 962
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNSUPPORTED_URI_SCHEME:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v0, v1, :cond_2

    .line 963
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo v2, "onSendImMessageDone retry with other URI format"

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 964
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mSwapUriType:Z

    .line 1020
    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$onMessageRevokeTimerExpired$0(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "needToRevokeMessages"    # Ljava/util/Map;
    .param p1, "m1"    # Ljava/lang/String;
    .param p2, "m2"    # Ljava/lang/String;

    .line 875
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$onResendMessageRevokeRequest$2(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "needToRevokeMessages"    # Ljava/util/Map;
    .param p1, "m1"    # Ljava/lang/String;
    .param p2, "m2"    # Ljava/lang/String;

    .line 915
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$onSendMessageRevokeRequest$1(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "needToRevokeMessages"    # Ljava/util/Map;
    .param p1, "m1"    # Ljava/lang/String;
    .param p2, "m2"    # Ljava/lang/String;

    .line 890
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method private onAcceptSnfSessionDone(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 808
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 809
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    .line 810
    .local v1, "acceptResult":Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACCEPT_SNF_SESSION_DONE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 811
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v2, v3, :cond_0

    .line 812
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 815
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->releaseWakeLock(Ljava/lang/Object;)V

    .line 816
    return-void
.end method

.method private onAttachFile(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 707
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 708
    .local v0, "ftMsg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v1

    .line 709
    .local v1, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    instance-of v2, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v2, :cond_0

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_SERVICE:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    :goto_0
    move v8, v2

    .line 710
    .local v8, "capa":I
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mPhoneId:I

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    int-to-long v4, v8

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 711
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v6

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v7

    .line 710
    move-object v3, v1

    invoke-interface/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->checkCapability(Ljava/util/Set;JLcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v2

    .line 712
    .local v2, "strategyResponse":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->isFtSms()Z

    move-result v3

    if-nez v3, :cond_1

    .line 713
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->attachSlmFile()V

    goto :goto_1

    .line 714
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 715
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->deferMessage(Landroid/os/Message;)V

    .line 716
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    goto :goto_1

    .line 718
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->attachFile(Z)V

    .line 720
    :goto_1
    return-void
.end method

.method private onCloseAllSession(Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V
    .locals 3
    .param p1, "stopReason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    .line 839
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInProgressRequestCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingEvents:Ljava/util/List;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v2, 0x3f4

    invoke-virtual {v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    return-void

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->handleCloseAllSession(Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    .line 844
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    .line 845
    return-void
.end method

.method private onDownloadGroupIconDone(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V
    .locals 3
    .param p1, "iconData"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    .line 944
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DOWNLOAD_GROUP_ICON_DONE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 945
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateIconData(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    .line 946
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onGroupChatIconUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    .line 947
    return-void
.end method

.method private onExpireDeliveryTimeout()V
    .locals 6

    .line 571
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 572
    .local v1, "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    instance-of v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz v2, :cond_1

    .line 573
    move-object v2, v1

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    .line 574
    .local v2, "imMsg":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v3, v4, :cond_1

    .line 575
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onExpireDeliveryTimeout : sending failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DefaultState"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_DELIVERY_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v3, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    new-instance v4, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    .line 580
    .end local v1    # "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .end local v2    # "imMsg":Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    :cond_1
    goto :goto_0

    .line 581
    :cond_2
    return-void
.end method

.method private onExtendToGroupChatDone(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 264
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 265
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    .line 266
    .local v1, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;
    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 267
    .local v2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v3, v4, :cond_0

    .line 268
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onAddParticipantsSucceeded(Ljava/util/List;)V

    goto :goto_0

    .line 270
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onAddParticipantsFailed(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 272
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    .line 273
    return-void
.end method

.method private onFileComplete(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 5
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 390
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFileComplete: mProcessingFileTransfer size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPendingFileTrasfer size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    .line 393
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 395
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz v0, :cond_0

    .line 396
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 397
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onRequestSendMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 398
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 403
    .local v0, "isRemoved":Z
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFileComplete isRemoved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mProcessingFileTransfer size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    .line 404
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 406
    if-nez v0, :cond_1

    .line 411
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 412
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mPendingFileTransfer size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    .line 413
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 412
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 417
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v2, "onFileComplete next send file"

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 418
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->removeNextFtMessage()Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v1

    .line 420
    .local v1, "nextFtMsg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    if-eqz v1, :cond_4

    .line 421
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFtCallback()Landroid/os/Message;

    move-result-object v2

    if-nez v2, :cond_2

    .line 422
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v3, 0xbbe

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setFtCompleteCallback(Landroid/os/Message;)V

    .line 428
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 429
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 431
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v4, 0xbbd

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 432
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addToProcessingFileTransfer(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto :goto_0

    .line 434
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onProcessingFileTransferChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 437
    .end local v1    # "nextFtMsg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    :cond_5
    :goto_0
    return-void
.end method

.method private onForceCloseSession()V
    .locals 4

    .line 443
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRejoinable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedImSessionInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 447
    .local v0, "strategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    if-nez v0, :cond_1

    .line 448
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getPhoneId(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    .line 450
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getSessionStopReason(Z)Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    move-result-object v1

    .line 451
    .local v1, "reason":Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->handleCloseAllSession(Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    .line 452
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 453
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedImSessionInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 454
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    .line 455
    return-void
.end method

.method private onMessageRevokeOperationTimeout(Ljava/lang/String;)V
    .locals 4
    .param p1, "imdnId"    # Ljava/lang/String;

    .line 935
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getNeedToRevokeMessages()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 937
    .local v0, "message":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-interface {v1, p1, v2}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 938
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-interface {v1, v2, v0, v3}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onMessageRevocationDone(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;Ljava/util/Collection;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 939
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MESSAGE_REVOKE_OPERATION_TIMEOUT : imdnId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 941
    .end local v0    # "message":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    :cond_0
    return-void
.end method

.method private onMessageRevokeTimerExpired()V
    .locals 6

    .line 871
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MESSAGE_REVOKE_TIMER_EXPIRED : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getNeedToRevokeMessages()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsRevokeTimerRunning:Z

    .line 873
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getNeedToRevokeMessages()Ljava/util/Map;

    move-result-object v0

    .line 874
    .local v0, "needToRevokeMessages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 875
    .local v1, "imdnIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionDefaultState$cf1NHwig_RdF-QESzeh1NiV0m84;

    invoke-direct {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionDefaultState$cf1NHwig_RdF-QESzeh1NiV0m84;-><init>(Ljava/util/Map;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 876
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 877
    .local v3, "imdnId":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-interface {v4, v3, v5}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v4

    .line 878
    .local v4, "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v4, :cond_0

    .line 879
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V

    .line 881
    .end local v3    # "imdnId":Ljava/lang/String;
    .end local v4    # "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :cond_0
    goto :goto_0

    .line 882
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onMessageRevokeTimerExpired(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V

    .line 883
    return-void
.end method

.method private onProcessIncomingSnfSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;

    .line 801
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->PENDING_INVITE:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addImSessionInfo(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v0

    .line 802
    .local v0, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->handleAcceptSession(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    .line 804
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mReceivedMessage:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onIncomingSessionProcessed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Z)V

    .line 805
    return-void
.end method

.method private onReceiveMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 7
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 357
    const-string v0, "msg cannot be null"

    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveImMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultState"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateDeliveredTimestamp(J)V

    .line 362
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isDeliveredNotificationRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateDesiredNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    .line 364
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v2, 0xbc2

    invoke-virtual {v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 367
    :cond_0
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz v0, :cond_1

    .line 368
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->onReceived()V

    goto :goto_0

    .line 369
    :cond_1
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-eqz v0, :cond_2

    .line 370
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->receiveTransfer()V

    .line 377
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getComposingActiveUris()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 378
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v6, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingNotificationInterval:I

    invoke-interface/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onComposingReceived(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;ZI)V

    .line 381
    :cond_3
    return-void
.end method

.method private onResendMessageRevokeRequest()V
    .locals 9

    .line 913
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getNeedToRevokeMessages()Ljava/util/Map;

    move-result-object v0

    .line 914
    .local v0, "needToRevokeMessages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 915
    .local v1, "imdnIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionDefaultState$TfZECp9jjcUO14PNplzRrnhbrK8;

    invoke-direct {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionDefaultState$TfZECp9jjcUO14PNplzRrnhbrK8;-><init>(Ljava/util/Map;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 916
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 917
    .local v3, "imdnId":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-interface {v4, v3, v5}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v4

    .line 918
    .local v4, "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRevocationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    if-ne v5, v6, :cond_0

    .line 919
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RESEND_MESSAGE_REVOKE_REQUEST : imdnId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 920
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v8, 0xbc9

    .line 921
    invoke-virtual {v7, v8, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 922
    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v8

    .line 920
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->sendMessageRevokeRequest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;)V

    .line 924
    .end local v3    # "imdnId":Ljava/lang/String;
    .end local v4    # "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :cond_0
    goto :goto_0

    .line 925
    :cond_1
    return-void
.end method

.method private onSendDeliveredNodification(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 10
    .param p1, "message"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 728
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfoByMessageId(I)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v0

    .line 729
    .local v0, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRawHandle()Ljava/lang/Object;

    move-result-object v1

    .line 730
    .local v1, "rawHandle":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->isSnFSession()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    if-ne v2, v3, :cond_0

    .line 731
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    .line 733
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v3, 0xbc3

    .line 734
    invoke-virtual {v2, v3, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 735
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v8

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBotSessionAnonymized()Z

    move-result v9

    .line 733
    move-object v2, p1

    move-object v3, v1

    invoke-virtual/range {v2 .. v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->sendDeliveredNotification(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;ZZ)V

    .line 736
    return-void
.end method

.method private onSendDeliveredNodificationDone(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 754
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 755
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 756
    .local v1, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 757
    .local v2, "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v3, v4, :cond_0

    .line 758
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v4, "There is ENGINE Error during sending DELIVERED"

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 760
    :cond_0
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendDeliveredNotificationDone()V

    .line 762
    :goto_0
    return-void
.end method

.method private onSendDisplayedNotification()V
    .locals 4

    .line 739
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isAggrImdnSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    .line 740
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 741
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->sendAggregatedDisplayReport()V

    goto :goto_1

    .line 743
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mPhoneId:I

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    const-string v3, "num_of_display_notification_atonce"

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 746
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 748
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onSendDisplayedNotification(Ljava/util/List;)V

    .line 750
    .end local v0    # "l":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    :goto_1
    return-void
.end method

.method private onSendDisplayedNotificationDone(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 766
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 767
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 768
    .local v1, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v2, v3, :cond_0

    .line 769
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v3, "There is ENGINE Error during sending DISPLAYED"

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 771
    :cond_0
    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 772
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 773
    .local v4, "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendDisplayedNotificationDone()V

    .line 774
    .end local v4    # "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    goto :goto_0

    .line 776
    .end local v2    # "l":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    :cond_1
    :goto_1
    return-void
.end method

.method private onSendFile(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 696
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 697
    .local v0, "ftMsg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getIsSlmSvcMsg()Z

    move-result v1

    if-nez v1, :cond_0

    .line 698
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v2, "SEND_FILE in defaultState, conference uri will be changed"

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->conferenceUriChanged()V

    .line 700
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->deferMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 702
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sendFile()V

    .line 704
    :goto_0
    return-void
.end method

.method private onSendImMessageDone(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 18
    .param p1, "ar"    # Lcom/sec/internal/helper/AsyncResult;

    .line 281
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/sec/internal/helper/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_b

    iget-object v2, v1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 286
    :cond_0
    iget-object v2, v1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 287
    .local v2, "imMsg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    iget-object v3, v1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    .line 288
    .local v3, "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v5, 0x3fb

    invoke-virtual {v4, v5, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeMessages(ILjava/lang/Object;)V

    .line 289
    iget-boolean v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mIsProvisional:Z

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mPhoneId:I

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    const-string/jumbo v5, "use_provisional_response_assent"

    invoke-interface {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 290
    return-void

    .line 293
    :cond_1
    iget-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v4

    .line 294
    .local v4, "imError":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v5

    const/4 v14, 0x0

    const/4 v6, 0x1

    if-nez v5, :cond_2

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotUri(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v14

    :goto_0
    move v15, v5

    .line 296
    .local v15, "hasChatbotUri":Z
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onSendImMessageDone : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " retryTimer: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v8, v8, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRetryTimer:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " newContactValue: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v8, v8, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNewContactValueUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " hasChatbotUri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 299
    iget-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-direct {v0, v2, v15, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->setRevokeTimer(Lcom/sec/internal/ims/servicemodules/im/MessageBase;ZLcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 301
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v4, v5, :cond_3

    .line 302
    iget-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    new-instance v6, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v7, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {v2, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    .line 303
    return-void

    .line 306
    :cond_3
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v7

    invoke-interface {v5, v7}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v13

    .line 307
    .local v13, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v13, :cond_5

    .line 308
    invoke-virtual {v13}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-eq v5, v7, :cond_4

    .line 309
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo v6, "onSendImMessageDone : msg has already been delivered successfully"

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 310
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    iget-object v7, v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-direct {v5, v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    new-instance v6, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v7, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {v2, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    .line 312
    return-void

    .line 313
    :cond_4
    invoke-virtual {v13}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v5, v7, :cond_5

    .line 314
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSendImMessageDone : Message Id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " had been failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->loge(Ljava/lang/String;)V

    .line 315
    return-void

    .line 319
    :cond_5
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v5

    if-nez v5, :cond_7

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_CHATBOT_CONVERSATION_NEEDED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v4, v5, :cond_7

    .line 320
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo v7, "onStartSessionDone : chatbot conversation needed"

    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->loge(Ljava/lang/String;)V

    .line 321
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateIsChatbotRole(Z)V

    .line 322
    iget v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mPhoneId:I

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    invoke-static {v5, v7, v6}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->updateChatbotCapability(ILcom/sec/ims/util/ImsUri;Z)V

    .line 323
    if-eqz v13, :cond_6

    .line 324
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v5, v13}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendImMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 326
    :cond_6
    return-void

    .line 329
    :cond_7
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v6, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mPhoneId:I

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v5

    .line 330
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getCurrentRetryCount()I

    move-result v7

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v8, v6, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRetryTimer:I

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v9, v6, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNewContactValueUri:Lcom/sec/ims/util/ImsUri;

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 331
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v10

    const/4 v11, 0x0

    instance-of v12, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    .line 329
    move-object v6, v4

    move/from16 v16, v12

    move v12, v15

    move-object/from16 v17, v13

    .end local v13    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .local v17, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    move/from16 v13, v16

    invoke-interface/range {v5 .. v13}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->handleSendingMessageFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;IILcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;ZZZ)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v5

    .line 333
    .local v5, "strategyResponse":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v6

    .line 335
    .local v6, "statusCode":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    if-ne v7, v8, :cond_8

    sget-object v7, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne v6, v7, :cond_8

    .line 336
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo v8, "onSendImMessageDone : GLS fallback to legacy"

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 337
    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    .line 339
    :cond_8
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v8, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mPhoneId:I

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v7

    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v7, v8, v14, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->forceRefreshCapability(Ljava/util/Set;ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    .line 342
    invoke-direct {v0, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->shouldCloseSession(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v8, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mPhoneId:I

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v7

    invoke-interface {v7, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isCloseSessionNeeded(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 343
    :cond_9
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    iget-object v8, v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mRawHandle:Ljava/lang/Object;

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-virtual {v7, v8, v9}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->handleCloseSession(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    .line 344
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    .line 347
    :cond_a
    invoke-direct {v0, v5, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->handleSendImResult(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;)V

    .line 348
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onSendImMessageDone - msgId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " statusCode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 349
    return-void

    .line 282
    .end local v2    # "imMsg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .end local v3    # "result":Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;
    .end local v4    # "imError":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .end local v5    # "strategyResponse":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .end local v6    # "statusCode":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    .end local v15    # "hasChatbotUri":Z
    .end local v17    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :cond_b
    :goto_1
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo v3, "result is null"

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->loge(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method private onSendIscomposingNotification()V
    .locals 3

    .line 848
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SEND_ISCOMPOSING_NOTIFICATION received in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 850
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 851
    .local v0, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    if-eqz v0, :cond_0

    .line 852
    const-string/jumbo v1, "trigger_capex_when_starttyping"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isImCapAlwaysOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 853
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->triggerCapex()V

    goto :goto_0

    .line 856
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v2, "SEND_ISCOMPOSING_NOTIFICATION : Failed to get strategy"

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->loge(Ljava/lang/String;)V

    .line 858
    :cond_1
    :goto_0
    return-void
.end method

.method private onSendMessageResponseTimeout(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    .line 779
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    .line 785
    .local v0, "status":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v0, v1, :cond_1

    .line 786
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->onSendMessageResponseTimeout()V

    .line 788
    :cond_1
    return-void
.end method

.method private onSendMessageRevokeRequest(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 886
    .local p1, "imdnIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SEND_MESSAGE_REVOKE_REQUEST : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 887
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->setLegacyLatching(Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)V

    .line 888
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 889
    .local v0, "messages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getNeedToRevokeMessages()Ljava/util/Map;

    move-result-object v1

    .line 890
    .local v1, "needToRevokeMessages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionDefaultState$FRaOs0Lerlu9MwnobqxkEHPDIqs;

    invoke-direct {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/-$$Lambda$ImSessionDefaultState$FRaOs0Lerlu9MwnobqxkEHPDIqs;-><init>(Ljava/util/Map;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 891
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 892
    .local v3, "imdnId":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-interface {v4, v3, v5}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v4

    .line 893
    .local v4, "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRevocationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    if-ne v5, v6, :cond_1

    .line 894
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v8, 0xbc9

    .line 895
    invoke-virtual {v7, v8, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 896
    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v8

    .line 894
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->sendMessageRevokeRequest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;)V

    .line 897
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isCfsTrigger()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 898
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V

    .line 899
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->addToRevokingMessages(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 901
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 904
    :cond_1
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SEND_MESSAGE_REVOKE_REQUEST : message can\'t find - imdnId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->loge(Ljava/lang/String;)V

    .line 906
    .end local v3    # "imdnId":Ljava/lang/String;
    .end local v4    # "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :goto_1
    goto :goto_0

    .line 907
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 908
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-interface {v2, v3, v0, v4}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onMessageRevocationDone(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;Ljava/util/Collection;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 910
    :cond_3
    return-void
.end method

.method private onSendMessageRevokeRequestInternalDone(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 928
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 929
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 930
    .local v1, "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 931
    .local v2, "error":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SEND_MESSAGE_REVOKE_REQUEST_INTERNAL_DONE : msgId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 932
    return-void
.end method

.method private onSendSlmMessageDone(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 14
    .param p1, "ar"    # Lcom/sec/internal/helper/AsyncResult;

    .line 483
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;

    .line 484
    .local v0, "msgResult":Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;
    iget-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 485
    .local v1, "r":Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v10

    .line 486
    .local v10, "result":Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    iget-object v2, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 487
    .local v2, "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v4, 0x3fb

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeMessages(ILjava/lang/Object;)V

    .line 488
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const-string v4, "check_p_asserted_identity"

    if-ne v10, v3, :cond_1

    .line 489
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mPhoneId:I

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 490
    iget-object v3, v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;->mPAssertedIdentity:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->updateParticipantWithPAI(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;)Z

    .line 492
    :cond_0
    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    .line 493
    return-void

    .line 496
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v5

    invoke-interface {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getPendingMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v11

    .line 497
    .end local v2    # "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .local v11, "message":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-nez v11, :cond_2

    .line 498
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo v3, "onSendSlmMessageDone: No message in pending message list. Ignore."

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 499
    return-void

    .line 502
    :cond_2
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_CHATBOT_CONVERSATION_NEEDED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/16 v12, 0xbbf

    const/4 v13, 0x1

    if-ne v10, v2, :cond_4

    .line 503
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo v3, "onSendSlmMessageDone : chatbot conversation needed"

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->loge(Ljava/lang/String;)V

    .line 504
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mPhoneId:I

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 505
    iget-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;->mPAssertedIdentity:Ljava/lang/String;

    invoke-direct {p0, v11, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->updateParticipantWithPAI(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 506
    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->incrementRetryCount()V

    .line 509
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2, v13}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateIsChatbotRole(Z)V

    .line 510
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-static {v2, v3, v13}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->updateChatbotCapability(ILcom/sec/ims/util/ImsUri;Z)V

    .line 511
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3, v12, v11}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 512
    return-void

    .line 515
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mPhoneId:I

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    .line 516
    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getCurrentRetryCount()I

    move-result v4

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v5, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRetryTimer:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v6, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNewContactValueUri:Lcom/sec/ims/util/ImsUri;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v7

    const/4 v8, 0x1

    instance-of v9, v11, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    .line 515
    move-object v3, v10

    invoke-interface/range {v2 .. v9}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->handleSendingMessageFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;IILcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;ZZ)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v2

    .line 518
    .local v2, "strategyResponse":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v3

    .line 519
    .local v3, "statusCode":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mNewContactValueUri:Lcom/sec/ims/util/ImsUri;

    .line 520
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState$1;->$SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode:[I

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v13, :cond_5

    .line 527
    invoke-virtual {v11, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    goto :goto_0

    .line 522
    :cond_5
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSendSlmMessageDone retry msgId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v11}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->incrementRetryCount()V

    .line 524
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v5, v12, v11}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessage(Landroid/os/Message;)V

    .line 525
    nop

    .line 530
    :goto_0
    return-void
.end method

.method private onSessionTimeoutThreshold(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V
    .locals 3
    .param p1, "pendingMsg"    # Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    .line 791
    if-eqz p1, :cond_1

    .line 792
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pendingMsg status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->loge(Ljava/lang/String;)V

    .line 793
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v0, v1, :cond_1

    .line 794
    :cond_0
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    .line 798
    :cond_1
    return-void
.end method

.method private onStartSessionProvisionalResponse(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 861
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 862
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    .line 863
    .local v1, "startResult":Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v2

    .line 864
    .local v2, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "START_SESSION_PROVISIONAL_RESPONSE : response="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 865
    if-eqz v2, :cond_0

    .line 866
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mLastProvisionalResponse:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 868
    :cond_0
    return-void
.end method

.method private onStartSessionSynchronousDone(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 819
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 820
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    .line 821
    .local v1, "rawHandle":Ljava/lang/Object;
    iget-object v2, v0, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 823
    .local v2, "sessionKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "START_SESSION_SYNCHRONOUS_DONE : sessionKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", rawHandle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 824
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v3

    .line 825
    .local v3, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    if-eqz v3, :cond_1

    .line 826
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->STARTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    iput-object v4, v3, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 827
    iput-object v1, v3, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    .line 828
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRawHandle()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 829
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setRawHandle(Ljava/lang/Object;)V

    .line 831
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mStartingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->startSessionEstablishmentTimer(Ljava/lang/Object;)V

    goto :goto_0

    .line 833
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot find the imSessionInfo using sessionKey : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->loge(Ljava/lang/String;)V

    .line 834
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    const/4 v7, 0x0

    invoke-direct {v5, v1, v6, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;Landroid/os/Message;)V

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->stopImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;)V

    .line 836
    :goto_0
    return-void
.end method

.method private removeNextFtMessage()Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 3

    .line 630
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNextFtMessage, current queue size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    const/4 v0, 0x0

    return-object v0

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    return-object v0
.end method

.method private setRevokeTimer(Lcom/sec/internal/ims/servicemodules/im/MessageBase;ZLcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 8
    .param p1, "imMsg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "hasChatbotUri"    # Z
    .param p3, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 584
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isRevocationAvailableMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    .line 585
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isMsgRevocationSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v0, v1, :cond_2

    .line 586
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getSipResponse()Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;->SIP_486_BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mPhoneId:I

    .line 587
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string/jumbo v1, "support_revoke_msg_for_486_resp"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    .line 589
    .local v0, "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isTemporary()Z

    move-result v1

    if-nez v1, :cond_3

    .line 590
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->AVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V

    .line 591
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getNeedToRevokeMessages()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsRevokeTimerRunning:Z

    const-string/jumbo v2, "setRevokeTimer() : msg id : "

    if-nez v1, :cond_1

    .line 593
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " time : "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatRevokeTimer()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 594
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsRevokeTimerRunning:Z

    .line 595
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v4, 0xbca

    .line 596
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 597
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatRevokeTimer()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 595
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Ljava/lang/String;Landroid/os/Message;J)V

    goto :goto_0

    .line 599
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " aleady timer running"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 602
    .end local v0    # "msg":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getNeedToRevokeMessages()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 603
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V

    .line 604
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeMsgFromListForRevoke(Ljava/lang/String;)V

    nop

    .line 607
    :cond_3
    :goto_0
    return-void
.end method

.method private shouldCloseSession(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z
    .locals 1
    .param p1, "mReason"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 620
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_ACTION_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_ON_OTHER_CONNECTION:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_DO_NOT_SEND_THIS_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private triggerCapex()V
    .locals 12

    .line 536
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "triggerCapex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 537
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mIsTriggeredCapex:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 541
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mIsTriggeredCapex:Z

    .line 542
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    .line 545
    .local v0, "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    .line 546
    .local v1, "uri":Lcom/sec/ims/util/ImsUri;
    if-eqz v0, :cond_1

    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH_IN_MSG_CTX:Lcom/sec/ims/options/CapabilityRefreshType;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 547
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getPhoneId(Ljava/lang/String;)I

    move-result v3

    .line 546
    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v2

    goto :goto_0

    .line 547
    :cond_1
    const/4 v2, 0x0

    :goto_0
    nop

    .line 549
    .local v2, "capx":Lcom/sec/ims/options/Capabilities;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getMsgCapValidityTime()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 550
    .local v3, "validityTime":J
    move-wide v5, v3

    .line 552
    .local v5, "timeGap":J
    if-eqz v2, :cond_2

    .line 553
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 554
    .local v7, "current":Ljava/util/Date;
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long v5, v8, v10

    .line 555
    cmp-long v8, v5, v3

    if-ltz v8, :cond_2

    .line 556
    move-wide v5, v3

    .line 560
    .end local v7    # "current":Ljava/util/Date;
    :cond_2
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SEND_ISCOMPOSING_NOTIFICATION. TimeGap is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 562
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v8, 0x3fe

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeMessages(I)V

    .line 563
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v9, v8}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 564
    return-void

    .line 538
    .end local v0    # "discoveryModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    .end local v1    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v2    # "capx":Lcom/sec/ims/options/Capabilities;
    .end local v3    # "validityTime":J
    .end local v5    # "timeGap":J
    :cond_3
    :goto_1
    return-void
.end method

.method private updateParticipantWithPAI(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;)Z
    .locals 6
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "sipNumber"    # Ljava/lang/String;

    .line 458
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateParticipantWithPAI, sipNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultState"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-static {p2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 461
    .local v0, "sipUri":Lcom/sec/ims/util/ImsUri;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/sec/ims/util/ImsUri;->EMPTY:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 462
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v1, "insertedParticipants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .local v2, "deletedParticipants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INITIAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-direct {v3, v4, v5, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/ims/util/ImsUri;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 468
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-interface {v3, v4, v1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onParticipantsInserted(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    .line 469
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-interface {v3, v4, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onParticipantsDeleted(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    .line 470
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateRemoteUri(Lcom/sec/ims/util/ImsUri;)V

    .line 471
    const/4 v3, 0x1

    return v3

    .line 474
    .end local v0    # "sipUri":Lcom/sec/ims/util/ImsUri;
    .end local v1    # "insertedParticipants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    .end local v2    # "deletedParticipants":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onSessionEstablished(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;

    .line 644
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSessionEstablished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v0

    .line 647
    .local v0, "info":Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;
    if-eqz v0, :cond_1

    .line 648
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 649
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->isSnFSession()Z

    move-result v1

    if-nez v1, :cond_0

    .line 650
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    .line 651
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedImSessionInfo:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 652
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;->mFeatures:Ljava/util/EnumSet;

    invoke-static {v2}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mSupportedFeatures:Ljava/util/EnumSet;

    .line 653
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;->mAcceptTypes:Ljava/util/List;

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRemoteAcceptTypes:Ljava/util/List;

    .line 654
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;->mAcceptWrappedTypes:Ljava/util/List;

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRemoteAcceptWrappedTypes:Ljava/util/List;

    .line 655
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 656
    .local v2, "ftMsg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->conferenceUriChanged()V

    .line 657
    .end local v2    # "ftMsg":Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    goto :goto_0

    .line 659
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3ec

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 660
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    .line 662
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mStartingReason:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->EXTENDING_1_1_TO_GROUP:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mPrevExtendRawHandle:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 663
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mPrevExtendRawHandle:Ljava/lang/Object;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;Landroid/os/Message;)V

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->stopImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;)V

    .line 665
    iput-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mPrevExtendRawHandle:Ljava/lang/Object;

    goto :goto_1

    .line 668
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SESSION_ESTABLISHED unknown rawHandle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 670
    :cond_2
    :goto_1
    return-void
.end method

.method protected processGroupChatManagementEvent(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 177
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultState, processGroupChatManagementEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 179
    const/4 v0, 0x1

    .line 181
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7e0

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7e1

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 203
    const/4 v0, 0x0

    goto :goto_0

    .line 183
    :pswitch_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onConferenceInfoUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;)V

    .line 184
    goto :goto_0

    .line 191
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onExtendToGroupChatDone(Landroid/os/Message;)V

    .line 192
    goto :goto_0

    .line 187
    :pswitch_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->deferMessage(Landroid/os/Message;)V

    .line 188
    goto :goto_0

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->handleRequestTimeout()V

    .line 200
    goto :goto_0

    .line 195
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onDownloadGroupIconDone(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    .line 196
    nop

    .line 206
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7d3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 73
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->processMessage(Landroid/os/Message;)Z

    move-result v0

    .line 75
    .local v0, "retVal":Z
    if-nez v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". current state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->loge(Ljava/lang/String;)V

    .line 79
    :cond_0
    return v0
.end method

.method protected processMessagingEvent(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultState, processMessagingEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x1

    .line 87
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 170
    :pswitch_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 126
    :pswitch_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsComposing:Z

    .line 127
    goto/16 :goto_0

    .line 142
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onSendIscomposingNotification()V

    .line 143
    goto/16 :goto_0

    .line 158
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onResendMessageRevokeRequest()V

    .line 159
    goto/16 :goto_0

    .line 166
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onMessageRevokeOperationTimeout(Ljava/lang/String;)V

    .line 167
    goto/16 :goto_0

    .line 150
    :pswitch_5
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onMessageRevokeTimerExpired()V

    .line 151
    goto :goto_0

    .line 162
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onSendMessageRevokeRequestInternalDone(Landroid/os/Message;)V

    .line 163
    goto :goto_0

    .line 154
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onSendMessageRevokeRequest(Ljava/util/List;)V

    .line 155
    goto :goto_0

    .line 146
    :pswitch_8
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onExpireDeliveryTimeout()V

    .line 147
    goto :goto_0

    .line 130
    :pswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onSendMessageResponseTimeout(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V

    .line 131
    goto :goto_0

    .line 118
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onSendDisplayedNotificationDone(Landroid/os/Message;)V

    .line 119
    goto :goto_0

    .line 110
    :pswitch_b
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onSendDisplayedNotification()V

    .line 111
    goto :goto_0

    .line 114
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onSendDeliveredNodificationDone(Landroid/os/Message;)V

    .line 115
    goto :goto_0

    .line 106
    :pswitch_d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onSendDeliveredNodification(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 107
    goto :goto_0

    .line 138
    :pswitch_e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onSendSlmMessageDone(Lcom/sec/internal/helper/AsyncResult;)V

    .line 139
    goto :goto_0

    .line 134
    :pswitch_f
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onSendSlmMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 135
    goto :goto_0

    .line 122
    :pswitch_10
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onFileComplete(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 123
    goto :goto_0

    .line 98
    :pswitch_11
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onSendFile(Landroid/os/Message;)V

    .line 99
    goto :goto_0

    .line 102
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onAttachFile(Landroid/os/Message;)V

    .line 103
    goto :goto_0

    .line 94
    :pswitch_13
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onReceiveMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 95
    goto :goto_0

    .line 89
    :pswitch_14
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onSendImMessageDone(Lcom/sec/internal/helper/AsyncResult;)V

    .line 90
    nop

    .line 173
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0xbba
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_13
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected processSessionConnectionEvent(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 210
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultState, processSessionConnectionEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x1

    .line 214
    .local v0, "retVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3eb

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3fb

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3fe

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 257
    const/4 v0, 0x0

    goto :goto_0

    .line 232
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onStartSessionSynchronousDone(Landroid/os/Message;)V

    .line 233
    goto :goto_0

    .line 253
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onStartSessionProvisionalResponse(Landroid/os/Message;)V

    .line 254
    goto :goto_0

    .line 216
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onForceCloseSession()V

    .line 217
    goto :goto_0

    .line 240
    :pswitch_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->onSessionClosed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;)V

    .line 241
    goto :goto_0

    .line 236
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onCloseAllSession(Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    .line 237
    goto :goto_0

    .line 228
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onAcceptSnfSessionDone(Landroid/os/Message;)V

    .line 229
    goto :goto_0

    .line 224
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onProcessIncomingSnfSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V

    .line 225
    goto :goto_0

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REFRESH_CAPEX_UPDATE. current state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->logi(Ljava/lang/String;)V

    .line 249
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mIsTriggeredCapex:Z

    .line 250
    goto :goto_0

    .line 220
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onSessionTimeoutThreshold(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V

    .line 221
    goto :goto_0

    .line 244
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onSessionEstablished(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;)V

    .line 245
    nop

    .line 260
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x3f2
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3f6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendAggregatedDisplayReport()V
    .locals 17

    .line 673
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendAggregatedDisplayReport : messages = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultState"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 676
    .local v1, "imdnDataList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v2

    .line 677
    .local v15, "imdnSendingMessageas":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/im/MessageBase;>;"
    :goto_0
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 678
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 679
    .local v2, "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNewImdnData(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    .end local v2    # "m":Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    goto :goto_0

    .line 682
    :cond_0
    new-instance v16, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    const/4 v3, 0x0

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v5

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 683
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v7

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v8

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v9, 0xbc5

    invoke-virtual {v2, v9, v15}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 684
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDeviceId()Ljava/lang/String;

    move-result-object v10

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v12

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 685
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBotSessionAnonymized()Z

    move-result v14

    move-object/from16 v2, v16

    move-object v11, v1

    invoke-direct/range {v2 .. v14}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;-><init>(Ljava/lang/Object;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;Ljava/util/List;ZLjava/util/Date;Z)V

    .line 687
    .local v2, "params":Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->sendDisplayedNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V

    .line 688
    return-void
.end method
