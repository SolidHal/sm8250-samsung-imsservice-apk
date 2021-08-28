.class public Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;
.super Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;
.source "SIMDeviceActivation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mClientId:Ljava/lang/String;

.field private mDeviceGroup:Ljava/lang/String;

.field private mMSISDN:Ljava/lang/String;

.field private mPushToken:Ljava/lang/String;

.field private mServiceName:Ljava/lang/String;

.field private mVIMSI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->LOG_TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "baseFlowImpl"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;
    .param p4, "messenger"    # Landroid/os/Messenger;
    .param p5, "version"    # Ljava/lang/String;

    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "created."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "baseFlowImpl"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;
    .param p4, "messenger"    # Landroid/os/Messenger;
    .param p5, "version"    # Ljava/lang/String;
    .param p6, "userAgent"    # Ljava/lang/String;
    .param p7, "imei"    # Ljava/lang/String;

    .line 38
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "created."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method


# virtual methods
.method public activateSIMDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "deviceGroup"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "pushToken"    # Ljava/lang/String;
    .param p4, "vimsiEap"    # Ljava/lang/String;
    .param p5, "msisdn"    # Ljava/lang/String;
    .param p6, "includeAuthorizationHeader"    # Z

    .line 160
    iput-object p4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mVIMSI:Ljava/lang/String;

    .line 161
    iput-object p5, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mMSISDN:Ljava/lang/String;

    .line 163
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mDeviceGroup:Ljava/lang/String;

    .line 164
    const-string v0, "conn-mgr"

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mServiceName:Ljava/lang/String;

    .line 165
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mClientId:Ljava/lang/String;

    .line 166
    iput-object p3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mPushToken:Ljava/lang/String;

    .line 167
    iput-boolean p6, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mIncludeAuthorizationHeader:Z

    .line 168
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->executeOperationWithChallenge()V

    .line 169
    return-void
.end method

.method public activateSIMDevice(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 9
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "pushToken"    # Ljava/lang/String;
    .param p3, "includeAuthorizationHeader"    # Z
    .param p4, "retryInterval"    # J

    .line 129
    iput-wide p4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mRetryInterval:J

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSHelper;->getVIMSIforSIMDevice(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "vimsiEap":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "msisdn":Ljava/lang/String;
    const-string v3, "Samsung-NSDS-CM-2.0"

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, v0

    move-object v7, v1

    move v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->activateSIMDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 135
    return-void
.end method

.method public buildRequests(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;)[Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    .locals 12
    .param p1, "nsdsCommonParams"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getNSDSClient()Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;

    move-result-object v0

    .line 55
    .local v0, "nsdsClient":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    move-object v9, v1

    .line 56
    .local v9, "messageIdGenerator":Ljava/util/concurrent/atomic/AtomicInteger;
    nop

    .line 57
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 58
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getChallengeResponse()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getAkaToken()Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getImsiEap()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    .line 57
    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildAuthenticationRequest(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;

    move-result-object v10

    .line 60
    .local v10, "requestAuthentication":Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    nop

    .line 61
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mVIMSI:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mDeviceGroup:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    .line 61
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildManageConnectivityRequest(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity;

    move-result-object v11

    .line 64
    .local v11, "requestManageConnectivity":Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    nop

    .line 65
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mMSISDN:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mServiceName:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mClientId:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mPushToken:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    .line 65
    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildManagePushTokenRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/RequestManagePushToken;

    move-result-object v1

    .line 67
    .local v1, "requestManagePushToken":Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    nop

    .line 68
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildGetMSISDNRequest(ILjava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/RequestGetMSISDN;

    move-result-object v2

    .line 70
    .local v2, "requestGetMSISDN":Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    const/4 v3, 0x4

    new-array v3, v3, [Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    const/4 v4, 0x1

    aput-object v11, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v4, 0x3

    aput-object v2, v3, v4

    return-object v3
.end method

.method protected executeOperationWithChallenge()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v2, p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->performOperation(ILcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;Landroid/os/Messenger;)V

    .line 88
    return-void
.end method

.method protected getResponseMessage()Landroid/os/Message;
    .locals 2

    .line 77
    const/4 v0, 0x0

    const/16 v1, 0x67

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected processResponse(Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "bundleNSDSResponses"    # Landroid/os/Bundle;

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "responseManageConnectivity":Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;
    const/4 v1, 0x0

    .line 94
    .local v1, "responseManagePushToken":Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;
    const/4 v2, 0x0

    .line 95
    .local v2, "responseGetMSISDN":Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;
    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 96
    const-string v4, "manageConnectivity"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;

    .line 97
    const-string v4, "managePushToken"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;

    .line 98
    const-string v4, "getMSISDN"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;

    .line 100
    const/4 v4, 0x3

    new-array v4, v4, [Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    aput-object v0, v4, v3

    const/4 v6, 0x2

    aput-object v1, v4, v6

    .line 102
    .local v4, "nsdsResponses":[Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->retryForServerError([Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 103
    return v5

    .line 107
    .end local v4    # "nsdsResponses":[Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 109
    sget-object v4, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSimDeviceActivationResponse : responseManageConnectivity respCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->responseCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "responseManagePushToken respCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;->responseCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "responseGetMsisdn respCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;->responseCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :cond_1
    sget-object v4, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "one of the responses is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    return v3
.end method

.method public shouldIncludeAuthHeader()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/SIMDeviceActivation;->mIncludeAuthorizationHeader:Z

    return v0
.end method
