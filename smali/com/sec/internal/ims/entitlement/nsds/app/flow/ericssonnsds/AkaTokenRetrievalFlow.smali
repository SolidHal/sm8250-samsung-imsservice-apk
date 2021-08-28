.class public Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;
.super Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;
.source "AkaTokenRetrievalFlow.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/entitlement/nsds/IAkaTokenRetrievalFlow;


# static fields
.field public static final ACTION_AKA_TOKEN_RETRIEVED:Ljava/lang/String; = "com.samsung.nsds.action.AKA_TOKEN_RETRIEVED"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final RETRIEVE_AKA_TOKEN:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;->LOG_TAG:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "baseFlowImpl"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;
    .param p4, "databaseHelper"    # Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V

    .line 42
    return-void
.end method

.method private startAkaTokenretrieval()V
    .locals 10

    .line 94
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startAkaTokenretrieval()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-wide/16 v0, 0x0

    .line 97
    .local v0, "retryInterval":J
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v2

    .line 98
    .local v2, "mnoVSimStrategy":Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;
    if-eqz v2, :cond_0

    .line 99
    invoke-interface {v2}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->getRetryInterval()J

    move-result-wide v0

    .line 101
    :cond_0
    new-instance v9, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v7, Landroid/os/Messenger;

    invoke-direct {v7, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v8, "1.0"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V

    .line 103
    .local v3, "akaTokenRetrival":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide v7, v0

    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->retrieveAkaToken(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 104
    return-void
.end method

.method private translateErrorCode(ZLjava/lang/String;II)I
    .locals 2
    .param p1, "success"    # Z
    .param p2, "nsdsMethodName"    # Ljava/lang/String;
    .param p3, "operation"    # I
    .param p4, "nsdsErrorCode"    # I

    .line 107
    const/4 v0, -0x1

    .line 108
    .local v0, "errorCode":I
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, -0x1

    if-eq p4, v1, :cond_0

    .line 109
    invoke-static {p2, p3, p4}, Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator;->translate(Ljava/lang/String;II)I

    move-result v0

    .line 111
    :cond_0
    return v0
.end method


# virtual methods
.method protected handleAkaTokenRetrievalResponse(Landroid/os/Bundle;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    .locals 5
    .param p1, "bundleNSDSResponses"    # Landroid/os/Bundle;

    .line 45
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;->getHttpErrRespCode(Landroid/os/Bundle;)I

    move-result v0

    .line 46
    .local v0, "errorResponseCode":I
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAkaTokenRetrievalResponse: errorResponseCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    const-string v2, "3gppAuthentication"

    const/4 v3, -0x1

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    .line 50
    .local v1, "nsdsResponseStatus":Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    if-eqz p1, :cond_2

    if-lez v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;

    .line 55
    .local v3, "response3gppAuthentication":Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;
    if-eqz v3, :cond_1

    .line 56
    iput-object v2, v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->methodName:Ljava/lang/String;

    .line 57
    iget v2, v3, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;->responseCode:I

    iput v2, v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    .line 58
    iget v2, v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    const/16 v4, 0x3e8

    if-eq v2, v4, :cond_1

    .line 59
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Aka Token Retrival failed:"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_1
    return-object v1

    .line 51
    .end local v3    # "response3gppAuthentication":Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;
    :cond_2
    :goto_0
    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 116
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x76

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    const/16 v0, 0xf

    .line 123
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;->handleAkaTokenRetrievalResponse(Landroid/os/Bundle;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    move-result-object v1

    const/4 v2, 0x0

    .line 122
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    .line 124
    goto :goto_0

    .line 119
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;->startAkaTokenretrieval()V

    .line 120
    nop

    .line 128
    :goto_0
    return-void
.end method

.method protected notifyNSDSFlowResponse(ZLjava/lang/String;II)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "nsdsMethodName"    # Ljava/lang/String;
    .param p3, "operation"    # I
    .param p4, "nsdsErrorCode"    # I

    .line 132
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyNSDSFlowResponse: success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v0, "translatedErroCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;->translateErrorCode(ZLjava/lang/String;II)I

    move-result v1

    .line 136
    .local v1, "errorCode":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.nsds.action.AKA_TOKEN_RETRIEVED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "request_status"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    const-string v3, "error_codes"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 142
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v3, v2, v4}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 143
    return-void
.end method

.method public performAkaTokenRetrieval(II)V
    .locals 3
    .param p1, "deviceEventType"    # I
    .param p2, "retryCount"    # I

    .line 66
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "performAkaTokenRetrieval()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iput p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;->mDeviceEventType:I

    .line 69
    iput p2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;->mRetryCount:I

    .line 71
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    .line 73
    return-void
.end method

.method protected queueOperation(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "nsdsBaseOperation"    # I
    .param p2, "dataMap"    # Landroid/os/Bundle;

    .line 77
    const/4 v0, -0x1

    .line 78
    .local v0, "msgId":I
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queueOperation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/16 v1, 0xf

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    const/4 v0, 0x1

    .line 82
    nop

    .line 86
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 87
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 88
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;->sendMessage(Landroid/os/Message;)Z

    .line 91
    .end local v1    # "message":Landroid/os/Message;
    :cond_1
    return-void
.end method
