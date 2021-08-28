.class public Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;
.super Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;
.source "AttSimSwapFlow.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/entitlement/nsds/ISimSwapFlow;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final REMOVE_PUSH_TOKEN:I


# instance fields
.field private mSimSwapCompletedListener:Lcom/sec/internal/interfaces/ims/entitlement/nsds/SimSwapCompletedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "baseFlowImpl"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;
    .param p4, "databaseHelper"    # Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V

    .line 44
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->mDeviceEventType:I

    .line 45
    return-void
.end method

.method private handleRemovePushTokenResponse(Landroid/os/Bundle;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    .locals 6
    .param p1, "bundleNSDSResponses"    # Landroid/os/Bundle;

    .line 88
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    .line 90
    .local v0, "nsdsResponseStatus":Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    if-nez p1, :cond_0

    .line 91
    return-object v0

    .line 93
    :cond_0
    const-string v2, "managePushToken"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;

    .line 96
    .local v2, "responseManagePushToken":Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;
    if-eqz v2, :cond_1

    .line 97
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "responseManagePushToken : messageId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;->messageId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "responseCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;->responseCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget v3, v2, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;->responseCode:I

    if-eq v3, v1, :cond_2

    .line 101
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "responseManagePushToken failed"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v1, 0x1

    iput v1, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->failedOperation:I

    goto :goto_0

    .line 105
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "responseManagePushToken is NULL"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_2
    :goto_0
    return-object v0
.end method

.method private removePushToken()V
    .locals 15

    .line 70
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "removePushToken()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->mContext:Landroid/content/Context;

    const-string v1, "aka_token"

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/util/SimSwapNSDSConfigHelper;->getConfigValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "akaToken":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->mContext:Landroid/content/Context;

    const-string v2, "imsi_eap"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/entitlement/util/SimSwapNSDSConfigHelper;->getConfigValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "imsiEap":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "push_token"

    invoke-static {v2, v3}, Lcom/sec/internal/ims/entitlement/util/SimSwapNSDSConfigHelper;->getConfigValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 75
    .local v12, "pushToken":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->mContext:Landroid/content/Context;

    const-string v3, "NATIVE_MSISDN"

    invoke-static {v2, v3}, Lcom/sec/internal/ims/entitlement/util/SimSwapNSDSConfigHelper;->getConfigValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 77
    .local v13, "msisdnFromNw":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v14

    .line 78
    .local v14, "slotId":I
    if-nez v13, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->mContext:Landroid/content/Context;

    invoke-static {v2, v14}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSHelper;->getMSISDNFromSIM(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v13

    .line 80
    .local v3, "msisdn":Ljava/lang/String;
    :goto_0
    new-instance v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;

    .line 81
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v8, Landroid/os/Messenger;

    invoke-direct {v8, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v9, "1.0"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .local v2, "voWiFiPushTokenRegister":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;
    const/4 v4, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x7530

    const-string/jumbo v6, "vowifi+vvm"

    move-object v5, v12

    move-object v7, v0

    move-object v8, v1

    invoke-virtual/range {v2 .. v11}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->removeVoWiFiPushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 84
    return-void
.end method

.method private resetDeviceStatus()V
    .locals 5

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "deviceUid":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    .line 115
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->mContext:Landroid/content/Context;

    const-string v3, "device_state"

    const-string v4, "deactivated"

    invoke-static {v2, v0, v3, v4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->mContext:Landroid/content/Context;

    const-string v3, "entitlement_state"

    invoke-static {v2, v0, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    const-string v4, "imsi_eap"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->removePrefForSlot(Landroid/content/Context;ILjava/lang/String;)V

    .line 128
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->removeAkaToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "push_token"

    invoke-static {v2, v0, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "sent_token_to_server"

    invoke-static {v2, v0, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->clearEntitlementServerUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->resetE911AidInfoForNativeLine(Ljava/lang/String;)V

    .line 135
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 160
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/16 v1, 0x71

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    const/4 v0, 0x5

    .line 168
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->handleRemovePushTokenResponse(Landroid/os/Bundle;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 167
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    .line 169
    goto :goto_0

    .line 164
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->removePushToken()V

    .line 165
    nop

    .line 173
    :goto_0
    return-void
.end method

.method public handleSimSwap(Lcom/sec/internal/interfaces/ims/entitlement/nsds/SimSwapCompletedListener;)V
    .locals 5
    .param p1, "simSwapCompletedListener"    # Lcom/sec/internal/interfaces/ims/entitlement/nsds/SimSwapCompletedListener;

    .line 58
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->mSimSwapCompletedListener:Lcom/sec/internal/interfaces/ims/entitlement/nsds/SimSwapCompletedListener;

    .line 59
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSimSwap...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "deviceUid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v1

    .line 62
    .local v1, "mnoVSimStrategy":Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;
    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->isNsdsUIAppSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 65
    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {p0, v2, v3, v4, v4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->notifyNSDSFlowResponse(ZLjava/lang/String;II)V

    .line 67
    :goto_0
    return-void
.end method

.method protected notifyNSDSFlowResponse(ZLjava/lang/String;II)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "nsdsMethodName"    # Ljava/lang/String;
    .param p3, "operation"    # I
    .param p4, "nsdsErrorCode"    # I

    .line 139
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyNSDSFlowResponse: success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->resetDeviceStatus()V

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v0, "translatedErrorCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v1, 0x8ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.nsds.action.SIM_DEVICE_DEACTIVATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    const-string v3, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    const-string/jumbo v2, "request_status"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    const-string v2, "error_codes"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 150
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v2, v1, v3}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 152
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/attwfcentitlement/AttSimSwapFlow;->mSimSwapCompletedListener:Lcom/sec/internal/interfaces/ims/entitlement/nsds/SimSwapCompletedListener;

    if-eqz v2, :cond_0

    .line 153
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/entitlement/nsds/SimSwapCompletedListener;->onSimSwapCompleted()V

    .line 156
    :cond_0
    return-void
.end method

.method protected queueOperation(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "nextOperation"    # I
    .param p2, "dataMap"    # Landroid/os/Bundle;

    .line 177
    return-void
.end method
