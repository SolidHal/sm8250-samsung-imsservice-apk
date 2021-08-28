.class public Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;
.super Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;
.source "PushTokenUpdateFlow.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final UPDATE_PUSH_TOKEN:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;->LOG_TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "baseFlowImpl"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;
    .param p4, "databaseHelper"    # Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V

    .line 36
    return-void
.end method

.method private handleResponsePushToken(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundleNSDSResponses"    # Landroid/os/Bundle;

    .line 43
    if-eqz p1, :cond_1

    .line 44
    const-string v0, "managePushToken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;

    .line 45
    .local v0, "responseManagePushToken":Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;->responseCode:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 47
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "push token is udpated in entitlment successfully"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .end local v0    # "responseManagePushToken":Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;
    :cond_0
    goto :goto_0

    .line 50
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "responseManagePushToken is NULL"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :goto_0
    return-void
.end method

.method private updatePushTokenForActiveLines()V
    .locals 7

    .line 55
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getNativeMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "nativeMsisdn":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v1

    .line 59
    .local v1, "mnoStrategy":Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;
    if-eqz v1, :cond_2

    .line 60
    invoke-interface {v1}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->getServiceListForPushToken()Ljava/util/List;

    move-result-object v2

    .line 61
    .local v2, "serviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 62
    .local v4, "service":Ljava/lang/String;
    invoke-direct {p0, v0, v4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;->updatePushTokenForLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .end local v4    # "service":Ljava/lang/String;
    goto :goto_0

    .line 65
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 66
    invoke-virtual {v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getActiveMsisdns(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 67
    .local v3, "activeMsisdnsIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 68
    .local v5, "activeMsisdn":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 69
    const-string/jumbo v6, "vowifi"

    invoke-direct {p0, v5, v6}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;->updatePushTokenForLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .end local v5    # "activeMsisdn":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 73
    .end local v2    # "serviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "activeMsisdnsIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_2
    return-void
.end method

.method private updatePushTokenForLine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p1, "msisdnFromNw"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;

    .line 76
    move-object/from16 v0, p0

    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePushTokenForLine: serviceName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v1, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    .line 78
    .local v1, "slotId":I
    if-nez p1, :cond_0

    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSHelper;->getMSISDNFromSIM(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    .line 79
    .local v2, "msisdn":Ljava/lang/String;
    :goto_0
    iget-object v4, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v5}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "push_token"

    invoke-static {v4, v5, v6}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 81
    .local v11, "pushToken":Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 82
    sget-object v4, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updating push token for msisn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v4, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;->getLooper()Landroid/os/Looper;

    move-result-object v13

    iget-object v14, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;->mContext:Landroid/content/Context;

    iget-object v15, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v5, Landroid/os/Messenger;

    invoke-direct {v5, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iget-object v6, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;->mUserAgent:Ljava/lang/String;

    iget-object v7, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;->mImeiForUA:Ljava/lang/String;

    const-string v17, "1.0"

    move-object v12, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    invoke-direct/range {v12 .. v19}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .local v4, "pushTokenUpdate":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, v2

    move-object/from16 v6, p2

    move-object v9, v11

    invoke-virtual/range {v4 .. v10}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->updatePushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 89
    .end local v4    # "pushTokenUpdate":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;
    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 94
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x70

    if-eq v0, v1, :cond_0

    .line 102
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown flow request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;->handleResponsePushToken(Landroid/os/Bundle;)V

    .line 100
    goto :goto_0

    .line 96
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;->updatePushTokenForActiveLines()V

    .line 97
    nop

    .line 104
    :goto_0
    return-void
.end method

.method protected notifyNSDSFlowResponse(ZLjava/lang/String;II)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "nsdsMethodName"    # Ljava/lang/String;
    .param p3, "operation"    # I
    .param p4, "nsdsErrorCode"    # I

    .line 108
    return-void
.end method

.method protected queueOperation(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "nextOperation"    # I
    .param p2, "dataMap"    # Landroid/os/Bundle;

    .line 112
    return-void
.end method

.method public updatePushToken()V
    .locals 1

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/PushTokenUpdateFlow;->sendEmptyMessage(I)Z

    .line 40
    return-void
.end method
