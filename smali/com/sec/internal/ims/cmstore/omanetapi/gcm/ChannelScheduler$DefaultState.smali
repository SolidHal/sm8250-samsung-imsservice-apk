.class Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;
.super Lcom/sec/internal/helper/State;
.source "ChannelScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;
    .param p2, "x1"    # Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$1;

    .line 334
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    const-string v1, "DefaultState, enter"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->log(Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public exit()V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    const-string v1, "DefaultState, exit"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->log(Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 341
    const/4 v0, 0x1

    .line 342
    .local v0, "retVal":Z
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->InitEvent(Landroid/os/Message;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v1

    .line 344
    .local v1, "event":Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;
    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 448
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 444
    :pswitch_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->pause()V

    .line 445
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->access$1400(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;->deleteNotificationSubscriptionResource()V

    .line 446
    goto/16 :goto_2

    .line 437
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 438
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;

    .line 439
    .local v2, "paramsWrapper":Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    iget-object v4, v2, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;->mApi:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-static {v3, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->access$1200(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 440
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_SUBSCRIPTION_AND_START_LONG_POLLING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v4

    iget-object v5, v2, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;->mBufDbParams:Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->access$1300(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;ILjava/lang/Object;)V

    .line 441
    .end local v2    # "paramsWrapper":Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;
    goto/16 :goto_2

    .line 431
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 432
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 433
    .local v2, "api":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v3, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->access$1200(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 434
    .end local v2    # "api":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    goto/16 :goto_2

    .line 427
    :pswitch_3
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->access$1100(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v3

    const/4 v4, 0x0

    const-string/jumbo v5, "pop_up"

    invoke-interface {v2, v3, v5, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 429
    goto/16 :goto_2

    .line 424
    :pswitch_4
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->access$900(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onPauseCMNNetApiWithResumeDelay(I)V

    .line 425
    goto/16 :goto_2

    .line 415
    :pswitch_5
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->access$1000(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v2

    .line 416
    .local v2, "paramCredExpired":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    const-wide/16 v3, 0x0

    .line 417
    .local v3, "delay":J
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/Number;

    if-eqz v5, :cond_0

    .line 418
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 420
    :cond_0
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->access$900(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    move-result-object v5

    invoke-interface {v5, v2, v3, v4}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOmaAuthenticationFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;J)V

    .line 421
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->RESET_STATE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->sendMessage(I)V

    .line 422
    goto/16 :goto_2

    .line 408
    .end local v2    # "paramCredExpired":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .end local v3    # "delay":J
    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 409
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 410
    .local v2, "api":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReExecute API "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " after 302 by using new url"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 412
    .end local v2    # "api":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    goto/16 :goto_2

    .line 404
    :pswitch_7
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->access$900(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 405
    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onCloudObjectNotificationUpdated(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 406
    goto/16 :goto_2

    .line 399
    :pswitch_8
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->access$900(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v4, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->MAILBOX_RESET:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 400
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v3

    .line 401
    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v3

    .line 399
    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onCloudSyncStopped(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 402
    goto/16 :goto_2

    .line 379
    :pswitch_9
    const-string v2, ""

    .line 380
    .local v2, "url":Ljava/lang/String;
    const/4 v3, 0x0

    .line 381
    .local v3, "isNeedRecreateChannel":Z
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;

    if-eqz v4, :cond_1

    .line 382
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;

    .line 383
    .local v4, "deleteData":Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;
    iget-object v2, v4, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->channelUrl:Ljava/lang/String;

    .line 384
    iget-boolean v3, v4, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->isNeedRecreateChannel:Z

    .line 385
    sget-object v5, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->TAG:Ljava/lang/String;

    const-string v6, "need recreate channel"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .end local v4    # "deleteData":Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;
    move v9, v3

    goto :goto_0

    .line 387
    :cond_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    move v9, v3

    .line 389
    .end local v3    # "isNeedRecreateChannel":Z
    .local v9, "isNeedRecreateChannel":Z
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 390
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v10

    new-instance v11, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    .line 392
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->access$800(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-result-object v8

    move-object v3, v11

    move-object v4, v5

    move v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Ljava/lang/String;ZLcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 390
    invoke-virtual {v10, v11}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_2

    .line 374
    .end local v2    # "url":Ljava/lang/String;
    .end local v9    # "isNeedRecreateChannel":Z
    :pswitch_a
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    .line 375
    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->access$800(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 374
    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 376
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionResUrl(Ljava/lang/String;)V

    .line 377
    goto/16 :goto_2

    .line 357
    :pswitch_b
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 358
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_ACTIVE_NOTIFICATIONCHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->sendMessage(I)V

    goto :goto_1

    .line 360
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMAChannelResURL()Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, "resUrl":Ljava/lang/String;
    const/4 v3, 0x0

    .line 362
    .local v3, "channelId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 363
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 364
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v4

    new-instance v5, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    .line 366
    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->access$800(Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;)Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-result-object v7

    invoke-direct {v5, v6, v6, v3, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 364
    invoke-virtual {v4, v5}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_1

    .line 368
    :cond_3
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREATE_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->sendMessage(I)V

    .line 371
    .end local v2    # "resUrl":Ljava/lang/String;
    .end local v3    # "channelId":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    iget-object v3, v2, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->mChannelCheckingState:Lcom/sec/internal/helper/State;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 372
    goto :goto_2

    .line 355
    :pswitch_c
    goto :goto_2

    .line 352
    :pswitch_d
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->RESET_STATE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->sendMessage(I)V

    .line 353
    goto :goto_2

    .line 349
    :pswitch_e
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->sendMessage(I)V

    .line 350
    goto :goto_2

    .line 346
    :pswitch_f
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->RESET_STATE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->sendMessage(I)V

    .line 347
    nop

    .line 451
    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 452
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DefaultState, Handled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;->log(Ljava/lang/String;)V

    .line 454
    :cond_5
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
