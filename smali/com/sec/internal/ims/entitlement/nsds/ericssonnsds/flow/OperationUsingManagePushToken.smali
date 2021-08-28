.class public Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;
.super Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;
.source "OperationUsingManagePushToken.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mClientId:Ljava/lang/String;

.field private mMSISDN:Ljava/lang/String;

.field private mOperation:I

.field private mPushToken:Ljava/lang/String;

.field private mServiceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "baseFlowImpl"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;
    .param p4, "messenger"    # Landroid/os/Messenger;
    .param p5, "version"    # Ljava/lang/String;

    .line 22
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->LOG_TAG:Ljava/lang/String;

    const-string v1, "created."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
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

    .line 28
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->LOG_TAG:Ljava/lang/String;

    const-string v1, "created."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method


# virtual methods
.method public buildRequests(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;)[Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    .locals 11
    .param p1, "nsdsCommonParams"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;

    .line 41
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getNSDSClient()Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;

    move-result-object v0

    .line 42
    .local v0, "nsdsClient":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    move-object v9, v1

    .line 43
    .local v9, "messageIdGenerator":Ljava/util/concurrent/atomic/AtomicInteger;
    nop

    .line 44
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 45
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getChallengeResponse()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getAkaToken()Ljava/lang/String;

    move-result-object v5

    .line 46
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getImsiEap()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    .line 44
    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildAuthenticationRequest(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;

    move-result-object v10

    .line 47
    .local v10, "requestAuthentication":Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    nop

    .line 48
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->mMSISDN:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->mServiceName:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->mClientId:Ljava/lang/String;

    iget v6, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->mOperation:I

    iget-object v7, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->mPushToken:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    .line 48
    invoke-virtual/range {v1 .. v8}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildManagePushTokenRequest(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/RequestManagePushToken;

    move-result-object v1

    .line 50
    .local v1, "requestManagePushToken":Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    return-object v2
.end method

.method protected executeOperationWithAkaToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "imsiEap"    # Ljava/lang/String;
    .param p2, "akaToken"    # Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v5, Landroid/os/Messenger;

    invoke-direct {v5, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const/16 v1, 0x2a

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->performOperationWithAkaToken(ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;Landroid/os/Messenger;)V

    .line 163
    return-void
.end method

.method protected executeOperationWithChallenge()V
    .locals 3

    .line 83
    iget v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->mOperation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    const/16 v1, 0x2a

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, p0, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->performOperation(ILcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;Landroid/os/Messenger;)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    const/16 v1, 0x29

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, p0, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->performOperation(ILcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;Landroid/os/Messenger;)V

    .line 88
    :goto_0
    return-void
.end method

.method protected getResponseMessage()Landroid/os/Message;
    .locals 3

    .line 74
    const/16 v0, 0x70

    .line 75
    .local v0, "respMsgId":I
    iget v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->mOperation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 76
    const/16 v0, 0x71

    .line 78
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method protected processResponse(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "bundleNSDSResponses"    # Landroid/os/Bundle;

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "responseManagePushToken":Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;
    if-eqz p1, :cond_0

    .line 58
    const-string v1, "managePushToken"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManagePushToken;

    goto :goto_0

    .line 60
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "responseCollection is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->retryForServerError(Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public registerVoWiFiPushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 7
    .param p1, "msisdn"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "pushToken"    # Ljava/lang/String;
    .param p4, "serviceName"    # Ljava/lang/String;
    .param p5, "includeAuthorizationHeader"    # Z
    .param p6, "retryInterval"    # J

    .line 123
    iput-wide p6, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->mRetryInterval:J

    .line 124
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p2

    move-object v5, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->updatePushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 128
    return-void
.end method

.method public removeVoWiFiPushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 1
    .param p1, "msisdn"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "pushToken"    # Ljava/lang/String;
    .param p4, "serviceName"    # Ljava/lang/String;
    .param p5, "akaToken"    # Ljava/lang/String;
    .param p6, "imsiEap"    # Ljava/lang/String;
    .param p7, "includeAuthorizationHeader"    # Z
    .param p8, "retryInterval"    # J

    .line 150
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->mMSISDN:Ljava/lang/String;

    .line 151
    iput-object p4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->mServiceName:Ljava/lang/String;

    .line 152
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->mClientId:Ljava/lang/String;

    .line 153
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->mOperation:I

    .line 154
    iput-object p3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->mPushToken:Ljava/lang/String;

    .line 155
    iput-wide p8, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->mRetryInterval:J

    .line 156
    iput-boolean p7, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->mIncludeAuthorizationHeader:Z

    .line 158
    invoke-virtual {p0, p6, p5}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->executeOperationWithAkaToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public removeVoWiFiPushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 7
    .param p1, "msisdn"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "pushToken"    # Ljava/lang/String;
    .param p4, "serviceName"    # Ljava/lang/String;
    .param p5, "includeAuthorizationHeader"    # Z
    .param p6, "retryInterval"    # J

    .line 141
    iput-wide p6, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->mRetryInterval:J

    .line 142
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p2

    move-object v5, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->updatePushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 145
    return-void
.end method

.method public shouldIncludeAuthHeader()Z
    .locals 1

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public updatePushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .param p1, "msisdn"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "clientId"    # Ljava/lang/String;
    .param p4, "operation"    # I
    .param p5, "pushToken"    # Ljava/lang/String;
    .param p6, "includeAuthorizationHeader"    # Z

    .line 103
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->mMSISDN:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->mServiceName:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->mClientId:Ljava/lang/String;

    .line 106
    iput p4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->mOperation:I

    .line 107
    iput-object p5, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->mPushToken:Ljava/lang/String;

    .line 108
    iput-boolean p6, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->mIncludeAuthorizationHeader:Z

    .line 110
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManagePushToken;->executeOperationWithChallenge()V

    .line 111
    return-void
.end method
