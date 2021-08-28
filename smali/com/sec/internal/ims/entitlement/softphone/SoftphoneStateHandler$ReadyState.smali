.class Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;
.super Lcom/sec/internal/helper/State;
.source "SoftphoneStateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;
    .param p2, "x1"    # Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;

    .line 291
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

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

    .line 295
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 299
    const/4 v0, 0x1

    .line 300
    .local v0, "retVal":Z
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

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

    .line 301
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_16

    const/4 v3, 0x2

    if-eq v1, v3, :cond_15

    const/4 v3, 0x3

    if-eq v1, v3, :cond_14

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eq v1, v4, :cond_13

    const/4 v4, 0x6

    if-eq v1, v4, :cond_12

    const/4 v6, 0x7

    if-eq v1, v6, :cond_11

    const/16 v6, 0x12

    if-eq v1, v6, :cond_10

    const/16 v6, 0x13

    const/16 v7, 0x40a

    if-eq v1, v6, :cond_f

    const/16 v6, 0x3f2

    const/16 v8, 0xc8

    if-eq v1, v6, :cond_e

    const/16 v9, 0x3f3

    if-eq v1, v9, :cond_d

    const/16 v10, 0x3f9

    if-eq v1, v10, :cond_c

    const/16 v10, 0x3fa

    if-eq v1, v10, :cond_b

    const/16 v10, 0x400

    if-eq v1, v10, :cond_a

    const/16 v10, 0x401

    if-eq v1, v10, :cond_9

    const/16 v10, 0x406

    if-eq v1, v10, :cond_8

    const/16 v10, 0x407

    if-eq v1, v10, :cond_7

    const/16 v10, 0x409

    if-eq v1, v10, :cond_6

    if-eq v1, v7, :cond_5

    const-string v7, "attempt"

    sparse-switch v1, :sswitch_data_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 532
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected event : current status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->getAccountStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 449
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 455
    .local v1, "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    if-eqz v1, :cond_1

    .line 456
    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, "xml":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 458
    const-string v3, "<cp:conditions></cp:conditions>"

    const-string v4, "<cp:conditions><ss:unconditional/></cp:conditions>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 460
    :cond_0
    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setDataString(Ljava/lang/String;)V

    .line 462
    .end local v2    # "xml":Ljava/lang/String;
    :cond_1
    const-class v2, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse;

    .line 463
    invoke-static {v1, v2, v8, v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->parseXmlResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;IZ)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse;

    .line 464
    .local v2, "response":Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse;
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v3, v3, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->processGetCallForwardingInfoResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse;I)V

    .line 465
    goto/16 :goto_2

    .line 442
    .end local v1    # "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .end local v2    # "response":Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 443
    .restart local v1    # "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    const-class v2, Lcom/sec/internal/ims/entitlement/softphone/responses/CallWaitingResponse;

    .line 444
    invoke-static {v1, v2, v8, v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->parseXmlResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;IZ)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/entitlement/softphone/responses/CallWaitingResponse;

    .line 445
    .local v2, "response":Lcom/sec/internal/ims/entitlement/softphone/responses/CallWaitingResponse;
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v3, v3, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->processGetCallWaitingInfoResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/CallWaitingResponse;I)V

    .line 446
    goto/16 :goto_2

    .line 424
    .end local v1    # "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .end local v2    # "response":Lcom/sec/internal/ims/entitlement/softphone/responses/CallWaitingResponse;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 425
    .restart local v1    # "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    const-class v2, Lcom/sec/internal/ims/entitlement/softphone/responses/AddAddressResponse;

    .line 426
    invoke-static {v1, v2, v8}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/entitlement/softphone/responses/AddAddressResponse;

    .line 427
    .local v2, "response":Lcom/sec/internal/ims/entitlement/softphone/responses/AddAddressResponse;
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v3, v3, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v2, v4, v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->processAddE911AddressResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/AddAddressResponse;II)V

    .line 428
    goto/16 :goto_2

    .line 413
    .end local v1    # "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .end local v2    # "response":Lcom/sec/internal/ims/entitlement/softphone/responses/AddAddressResponse;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 414
    .restart local v1    # "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    const-class v2, Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse;

    const/16 v4, 0xc9

    invoke-static {v1, v2, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse;

    .line 416
    .local v2, "response":Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse;
    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, v2, Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse;->mTransactionId:I

    .line 417
    iget v4, p1, Landroid/os/Message;->arg2:I

    iput v4, v2, Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse;->mAddressId:I

    .line 418
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 419
    .local v4, "data":Landroid/os/Bundle;
    const-string v6, "confirmed"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v2, Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse;->mConfirmed:Z

    .line 420
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v5, v5, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    const-string/jumbo v6, "retry_count"

    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v5, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->processValidateE911AddressResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse;I)V

    .line 421
    goto/16 :goto_2

    .line 390
    .end local v1    # "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .end local v2    # "response":Lcom/sec/internal/ims/entitlement/softphone/responses/AddressValidationResponse;
    .end local v4    # "data":Landroid/os/Bundle;
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 391
    .restart local v1    # "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    const-class v3, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;

    invoke-static {v1, v3, v8}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;

    .line 393
    .local v3, "response":Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 394
    .local v6, "data":Landroid/os/Bundle;
    iget-object v8, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v8, v8, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    const/4 v10, 0x1

    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    if-ne v9, v2, :cond_2

    move v12, v2

    goto :goto_0

    :cond_2
    move v12, v5

    .line 395
    :goto_0
    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 394
    move-object v9, v3

    invoke-virtual/range {v8 .. v13}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->processImsNetworkIdentifiersResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;ZIZI)V

    .line 396
    goto/16 :goto_2

    .line 406
    .end local v1    # "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .end local v3    # "response":Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;
    .end local v6    # "data":Landroid/os/Bundle;
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 407
    .restart local v1    # "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    const-class v2, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;

    const/16 v3, 0xcc

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;

    .line 409
    .local v2, "response":Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v3, v3, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->processProvisionAccountResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;I)V

    .line 410
    goto/16 :goto_2

    .line 399
    .end local v1    # "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .end local v2    # "response":Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 400
    .restart local v1    # "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    const-class v2, Lcom/sec/internal/ims/entitlement/softphone/responses/TermsAndConditionsResponse;

    invoke-static {v1, v2, v8}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/entitlement/softphone/responses/TermsAndConditionsResponse;

    .line 402
    .local v2, "response":Lcom/sec/internal/ims/entitlement/softphone/responses/TermsAndConditionsResponse;
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v3, v3, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->processTermsAndConditionsResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/TermsAndConditionsResponse;I)V

    .line 403
    goto/16 :goto_2

    .line 381
    .end local v1    # "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .end local v2    # "response":Lcom/sec/internal/ims/entitlement/softphone/responses/TermsAndConditionsResponse;
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 382
    .restart local v1    # "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    const-class v3, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;

    invoke-static {v1, v3, v8}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;

    .line 384
    .restart local v3    # "response":Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 385
    .restart local v6    # "data":Landroid/os/Bundle;
    iget-object v8, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v8, v8, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    const/4 v10, 0x0

    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    if-ne v9, v2, :cond_3

    move v12, v2

    goto :goto_1

    :cond_3
    move v12, v5

    .line 386
    :goto_1
    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 385
    move-object v9, v3

    invoke-virtual/range {v8 .. v13}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->processImsNetworkIdentifiersResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;ZIZI)V

    .line 387
    goto/16 :goto_2

    .line 526
    .end local v1    # "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .end local v3    # "response":Lcom/sec/internal/ims/entitlement/softphone/responses/ImsNetworkIdentifiersResponse;
    .end local v6    # "data":Landroid/os/Bundle;
    :sswitch_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v2, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mActivatedState:Lcom/sec/internal/helper/State;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 527
    goto/16 :goto_2

    .line 529
    :sswitch_1
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->access$500(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)Lcom/sec/internal/helper/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 530
    goto/16 :goto_2

    .line 368
    :sswitch_2
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->deferMessage(Landroid/os/Message;)V

    .line 369
    goto/16 :goto_2

    .line 365
    :sswitch_3
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->deferMessage(Landroid/os/Message;)V

    .line 366
    goto/16 :goto_2

    .line 431
    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 432
    .restart local v1    # "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    const/4 v2, -0x1

    .line 433
    .local v2, "statusCode":I
    if-eqz v1, :cond_4

    .line 434
    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v2

    .line 436
    :cond_4
    const-class v3, Lcom/sec/internal/ims/entitlement/softphone/responses/AccessTokenResponse;

    .line 437
    invoke-static {v1, v3, v8}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/entitlement/softphone/responses/AccessTokenResponse;

    .line 438
    .local v3, "response":Lcom/sec/internal/ims/entitlement/softphone/responses/AccessTokenResponse;
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v4, v4, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v3, v2, v5, v6}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->processRefreshTokenResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/AccessTokenResponse;III)V

    .line 439
    goto/16 :goto_2

    .line 336
    .end local v1    # "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .end local v2    # "statusCode":I
    .end local v3    # "response":Lcom/sec/internal/ims/entitlement/softphone/responses/AccessTokenResponse;
    :sswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 337
    .local v1, "data":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v2, v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    int-to-long v5, v5

    invoke-virtual {v1, v7, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v4, v5, v6, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->refreshToken(IJI)V

    .line 338
    goto/16 :goto_2

    .line 358
    .end local v1    # "data":Landroid/os/Bundle;
    :sswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    .line 359
    .local v1, "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v9, v3, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 360
    .local v2, "onComplete":Landroid/os/Message;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 361
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    .line 362
    goto/16 :goto_2

    .line 351
    .end local v1    # "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    .end local v2    # "onComplete":Landroid/os/Message;
    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    .line 352
    .restart local v1    # "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v6, v3, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 353
    .restart local v2    # "onComplete":Landroid/os/Message;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 354
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    .line 355
    goto/16 :goto_2

    .line 346
    .end local v1    # "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    .end local v2    # "onComplete":Landroid/os/Message;
    :sswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    .line 347
    .restart local v1    # "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v3, 0x6d

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    .line 348
    goto/16 :goto_2

    .line 341
    .end local v1    # "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    :sswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    .line 342
    .restart local v1    # "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v3, 0x6c

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    .line 343
    goto/16 :goto_2

    .line 485
    .end local v1    # "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    :cond_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 486
    .local v1, "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    const-class v2, Lcom/sec/internal/ims/entitlement/softphone/responses/AkaAuthenticationResponse;

    .line 487
    invoke-static {v1, v2, v8}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/entitlement/softphone/responses/AkaAuthenticationResponse;

    .line 488
    .local v2, "response":Lcom/sec/internal/ims/entitlement/softphone/responses/AkaAuthenticationResponse;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 489
    .local v3, "data":Landroid/os/Bundle;
    const-string v4, "nonce"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 490
    .local v4, "nonce":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v5, v5, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v2, v6, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->processAkaChallengeResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/AkaAuthenticationResponse;ILjava/lang/String;)V

    .line 491
    goto/16 :goto_2

    .line 506
    .end local v1    # "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .end local v2    # "response":Lcom/sec/internal/ims/entitlement/softphone/responses/AkaAuthenticationResponse;
    .end local v3    # "data":Landroid/os/Bundle;
    .end local v4    # "nonce":Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->access$300(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)Lcom/sec/internal/helper/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 507
    goto/16 :goto_2

    .line 516
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->access$400(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)Lcom/sec/internal/helper/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 517
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v2, v2, v5

    invoke-virtual {v1, v5, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->releaseImsNetworkIdentities(IJ)V

    .line 518
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->resetCurrentAddresses()V

    .line 519
    goto/16 :goto_2

    .line 502
    :cond_8
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->access$200(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)Lcom/sec/internal/helper/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 503
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v2, v2, v5

    invoke-virtual {v1, v5, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->releaseImsNetworkIdentities(IJ)V

    .line 504
    goto/16 :goto_2

    .line 521
    :cond_9
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v2, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mUserSwitchState:Lcom/sec/internal/helper/State;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 522
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v2, v2, v5

    invoke-virtual {v1, v5, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->releaseImsNetworkIdentities(IJ)V

    .line 523
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->resetCurrentAddresses()V

    .line 524
    goto/16 :goto_2

    .line 511
    :cond_a
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v2, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReleasingState:Lcom/sec/internal/helper/State;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 512
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v2, v2, v5

    invoke-virtual {v1, v5, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->releaseImsNetworkIdentities(IJ)V

    .line 513
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->resetCurrentAddresses()V

    .line 514
    goto/16 :goto_2

    .line 498
    :cond_b
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v2, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mDeactivatingState:Lcom/sec/internal/helper/State;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 499
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v2, v2, v5

    invoke-virtual {v1, v5, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->releaseImsNetworkIdentities(IJ)V

    .line 500
    goto/16 :goto_2

    .line 494
    :cond_c
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v2, v2, v5

    invoke-virtual {v1, v5, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->releaseImsNetworkIdentities(IJ)V

    .line 495
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "com.samsung.softphone.action.ACCOUNT_DEREGISTERED"

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    goto/16 :goto_2

    .line 476
    :cond_d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 477
    .restart local v1    # "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    const-class v2, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;

    .line 478
    invoke-static {v1, v2, v8}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;

    .line 479
    .local v2, "response":Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 480
    .restart local v3    # "data":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v4, v4, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 481
    const-string v6, "communication-diversion"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    .line 480
    invoke-virtual {v4, v2, v5, v6}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->processSetCallForwardingInfoResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;ILcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)V

    .line 482
    goto/16 :goto_2

    .line 468
    .end local v1    # "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .end local v2    # "response":Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;
    .end local v3    # "data":Landroid/os/Bundle;
    :cond_e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 469
    .restart local v1    # "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    const-class v2, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;

    .line 470
    invoke-static {v1, v2, v8}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneResponseUtils;->parseJsonResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;

    .line 471
    .restart local v2    # "response":Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 472
    .restart local v3    # "data":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v4, v4, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget v5, p1, Landroid/os/Message;->arg1:I

    const-string v6, "communication-waiting"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    invoke-virtual {v4, v2, v5, v6}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->processSetCallWaitingInfoResponse(Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;ILcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V

    .line 473
    goto/16 :goto_2

    .line 374
    .end local v1    # "httpResponse":Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .end local v2    # "response":Lcom/sec/internal/ims/entitlement/softphone/responses/SoftphoneResponse;
    .end local v3    # "data":Landroid/os/Bundle;
    :cond_f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    .line 375
    .local v1, "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v7, v3, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 376
    .local v2, "onComplete":Landroid/os/Message;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 377
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    .line 378
    goto/16 :goto_2

    .line 371
    .end local v1    # "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    .end local v2    # "onComplete":Landroid/os/Message;
    :cond_10
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    const/4 v2, 0x0

    const-string v3, "com.samsung.softphone.action.ACCOUNT_IDENTITY_RELEASED"

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    goto/16 :goto_2

    .line 331
    :cond_11
    :sswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    .line 332
    .restart local v1    # "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v3, 0x6b

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    .line 333
    goto :goto_2

    .line 324
    .end local v1    # "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    :cond_12
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    .line 325
    .restart local v1    # "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v3, 0x6a

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 326
    .restart local v2    # "onComplete":Landroid/os/Message;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 327
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    .line 328
    goto :goto_2

    .line 311
    .end local v1    # "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    .end local v2    # "onComplete":Landroid/os/Message;
    :cond_13
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v6, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v10, v1, v5

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-virtual/range {v6 .. v12}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getImsNetworkIdentifiers(ZZIJI)V

    .line 312
    goto :goto_2

    .line 319
    :cond_14
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    .line 320
    .restart local v1    # "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v3, 0x67

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    .line 321
    goto :goto_2

    .line 314
    .end local v1    # "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    :cond_15
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    .line 315
    .restart local v1    # "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v3, 0x66

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    .line 316
    goto :goto_2

    .line 304
    .end local v1    # "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    :cond_16
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    .line 305
    .restart local v1    # "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v3, 0x65

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 306
    .restart local v2    # "onComplete":Landroid/os/Message;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 307
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    .line 308
    nop

    .line 537
    .end local v1    # "txn":Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    .end local v2    # "onComplete":Landroid/os/Message;
    :goto_2
    return v0

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_a
        0x8 -> :sswitch_9
        0x9 -> :sswitch_8
        0xa -> :sswitch_7
        0xb -> :sswitch_6
        0xf -> :sswitch_5
        0x3f7 -> :sswitch_4
        0x3fc -> :sswitch_3
        0x3fe -> :sswitch_2
        0x40d -> :sswitch_1
        0x40e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
