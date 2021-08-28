.class public Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;
.super Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;
.source "XaaSimDeviceImplicitActivation.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/entitlement/nsds/ISIMDeviceImplicitActivation;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final START_SIM_ACTIVATION:I = 0x1


# instance fields
.field protected mNativeLineDetail:Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "baseFlowImpl"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;
    .param p4, "databaseHelper"    # Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V

    .line 52
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->mNativeLineDetail:Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    .line 57
    return-void
.end method

.method private startSimDeviceActivation()V
    .locals 10

    .line 164
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startSimDeviceActivation:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceInActivationProgress(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 166
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startSimDeviceActivation: activation in progress. do not do any thing"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_state"

    const-string v3, "activation_in_progress"

    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v8, Landroid/os/Messenger;

    invoke-direct {v8, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v9, "1.0"

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V

    .line 177
    .local v4, "simDeviceActivation":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;
    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 178
    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/PushTokenHelper;->getPushToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    .line 177
    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->activateSIMDevice(Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 179
    return-void
.end method

.method private translateErrorCode(ZLjava/lang/String;II)I
    .locals 2
    .param p1, "success"    # Z
    .param p2, "nsdsMethodName"    # Ljava/lang/String;
    .param p3, "operation"    # I
    .param p4, "nsdsErrorCode"    # I

    .line 198
    const/4 v0, -0x1

    .line 199
    .local v0, "errorCode":I
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, -0x1

    if-eq p4, v1, :cond_0

    .line 200
    invoke-static {p2, p3, p4}, Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator;->translate(Ljava/lang/String;II)I

    move-result v0

    .line 202
    :cond_0
    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 207
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v2, 0x67

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    nop

    .line 214
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->handleSimDeviceActivationResponse(Landroid/os/Bundle;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    move-result-object v0

    const/4 v2, 0x0

    .line 213
    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    .line 215
    goto :goto_0

    .line 210
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->startSimDeviceActivation()V

    .line 211
    nop

    .line 219
    :goto_0
    return-void
.end method

.method protected handleResponsePushToken(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;)V
    .locals 3
    .param p1, "responsePushToken"    # Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;

    .line 127
    if-eqz p1, :cond_0

    .line 128
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "responsePushToken : messageId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;->messageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "responseCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;->responseCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ResponseManagePushToken is NULL"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_0
    return-void
.end method

.method protected handleSimDeviceActivationResponse(Landroid/os/Bundle;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    .locals 10
    .param p1, "bundleNSDSResponses"    # Landroid/os/Bundle;

    .line 60
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->getHttpErrRespCode(Landroid/os/Bundle;)I

    move-result v0

    .line 61
    .local v0, "errorResponseCode":I
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSimDeviceActivationResponse: errorResponseCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    const-string v2, "manageConnectivity"

    const/4 v3, -0x1

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    .line 65
    .local v1, "nsdsResponseStatus":Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    if-eqz p1, :cond_5

    if-lez v0, :cond_0

    goto :goto_2

    .line 68
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;

    .line 69
    .local v3, "responseManageConnectivity":Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;
    const-string v4, "managePushToken"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;

    .line 70
    .local v5, "responsePushToken":Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;
    const-string v6, "getMSISDN"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;

    .line 72
    .local v7, "responseGetMsisdn":Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->handleResponsePushToken(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;)V

    .line 73
    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->hannldeResponseGetMsisdn(Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;)V

    .line 75
    const/16 v8, 0x3e8

    if-eqz v3, :cond_1

    iget v9, v3, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->responseCode:I

    if-ne v9, v8, :cond_1

    if-eqz v5, :cond_1

    iget v9, v5, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;->responseCode:I

    if-ne v9, v8, :cond_1

    if-eqz v7, :cond_1

    iget v9, v7, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->responseCode:I

    if-ne v9, v8, :cond_1

    .line 78
    iget v2, v3, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->responseCode:I

    iput v2, v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    goto :goto_1

    .line 80
    :cond_1
    if-eqz v7, :cond_2

    iget v9, v7, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->responseCode:I

    if-eq v9, v8, :cond_2

    .line 81
    iput-object v6, v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->methodName:Ljava/lang/String;

    .line 82
    iget v2, v7, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->responseCode:I

    iput v2, v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    goto :goto_0

    .line 83
    :cond_2
    if-eqz v3, :cond_3

    iget v6, v3, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->responseCode:I

    if-eq v6, v8, :cond_3

    .line 84
    iput-object v2, v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->methodName:Ljava/lang/String;

    .line 85
    const/4 v2, 0x0

    iput v2, v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->failedOperation:I

    .line 86
    iget v2, v3, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->responseCode:I

    iput v2, v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    goto :goto_0

    .line 87
    :cond_3
    if-eqz v5, :cond_4

    iget v2, v5, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;->responseCode:I

    if-eq v2, v8, :cond_4

    .line 88
    iput-object v4, v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->methodName:Ljava/lang/String;

    .line 89
    iget v2, v5, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;->responseCode:I

    iput v2, v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    .line 91
    :cond_4
    :goto_0
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    const-string v4, "SIMDevice activation failed:"

    invoke-static {v2, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_1
    return-object v1

    .line 66
    .end local v3    # "responseManageConnectivity":Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;
    .end local v5    # "responsePushToken":Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;
    .end local v7    # "responseGetMsisdn":Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;
    :cond_5
    :goto_2
    return-object v1
.end method

.method protected hannldeResponseGetMsisdn(Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;)V
    .locals 5
    .param p1, "responseGetMsisdn"    # Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;

    .line 104
    if-eqz p1, :cond_0

    .line 105
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "responseGetMsisdn : messageId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->messageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "responseCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->responseCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "msisdn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->msisdn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "service_fingerprint:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->serviceFingerprint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->responseCode:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->msisdn:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->serviceFingerprint:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->mNativeLineDetail:Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 112
    invoke-virtual {v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->insertOrUpdateNativeLine(JLjava/lang/String;Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->lineId:J

    .line 113
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->mNativeLineDetail:Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->msisdn:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->msisdn:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->mNativeLineDetail:Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->serviceFingerprint:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/data/LineDetail;->serviceFingerPrint:Ljava/lang/String;

    goto :goto_0

    .line 117
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ResponseGetMSISDN is NULL"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_1
    :goto_0
    return-void
.end method

.method protected notifyNSDSFlowResponse(ZLjava/lang/String;II)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "nsdsMethodName"    # Ljava/lang/String;
    .param p3, "operation"    # I
    .param p4, "nsdsErrorCode"    # I

    .line 223
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyNSDSFlowResponse: success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->updateDeviceState(Z)V

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v0, "translatedErroCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->translateErrorCode(ZLjava/lang/String;II)I

    move-result v1

    .line 229
    .local v1, "errorCode":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.nsds.action.SIM_DEVICE_ACTIVATED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    const-string v4, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    const-string/jumbo v3, "request_status"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 235
    iget v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->mRetryCount:I

    const-string/jumbo v4, "retry_count"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 236
    iget v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->mDeviceEventType:I

    const-string v4, "device_event_type"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 237
    const-string/jumbo v3, "orig_error_code"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    const-string v3, "error_codes"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 239
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v3, v2, v4}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 241
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->notifyCallbackForNsdsEvent(I)V

    .line 242
    return-void
.end method

.method public performSimDeviceImplicitActivation(II)V
    .locals 3
    .param p1, "deviceEventType"    # I
    .param p2, "retryCount"    # I

    .line 137
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performSimDeviceImplicitActivation: eventType-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iput p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->mDeviceEventType:I

    .line 139
    iput p2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->mRetryCount:I

    .line 141
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    .line 143
    return-void
.end method

.method protected queueOperation(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "nsdsBaseOperation"    # I
    .param p2, "dataMap"    # Landroid/os/Bundle;

    .line 147
    const/4 v0, -0x1

    .line 148
    .local v0, "msgId":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 153
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "queueOperation: did not match any nsds base operations"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_0
    const/4 v0, 0x1

    .line 151
    nop

    .line 156
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 157
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 158
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->sendMessage(Landroid/os/Message;)Z

    .line 161
    .end local v1    # "message":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method protected updateDeviceState(Z)V
    .locals 4
    .param p1, "success"    # Z

    .line 182
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDeviceState: flow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v0, "device_state"

    if-eqz p1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "activated"

    invoke-static {v1, v2, v0, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "deactivated"

    invoke-static {v1, v2, v0, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/xaawfcentitlement/XaaSimDeviceImplicitActivation;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    const-string v2, "imsi_eap"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->removePrefForSlot(Landroid/content/Context;ILjava/lang/String;)V

    .line 195
    :goto_0
    return-void
.end method
