.class public Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;
.super Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;
.source "RetrieveAkaToken.java"


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

    .line 29
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->LOG_TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "baseFlowImpl"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;
    .param p4, "messenger"    # Landroid/os/Messenger;
    .param p5, "version"    # Ljava/lang/String;

    .line 25
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->LOG_TAG:Ljava/lang/String;

    const-string v1, "created."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method


# virtual methods
.method public buildRequests(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;)[Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    .locals 10
    .param p1, "nsdsCommonParams"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;

    .line 41
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

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

    move-result-object v1

    .line 47
    .local v1, "requestAuthentication":Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    return-object v2
.end method

.method protected executeOperationWithChallenge()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->performOperation(ILcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;Landroid/os/Messenger;)V

    .line 63
    return-void
.end method

.method protected getResponseMessage()Landroid/os/Message;
    .locals 2

    .line 52
    const/4 v0, 0x0

    const/16 v1, 0x76

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected processResponse(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "bundleNSDSResponses"    # Landroid/os/Bundle;

    .line 67
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "processResponse for akatoken"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "response3gppAuthentication":Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 70
    const-string v2, "3gppAuthentication"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;

    .line 71
    if-eqz v0, :cond_0

    .line 72
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "response3gppAuthentication responseCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;->responseCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    new-array v2, v1, [Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 76
    .local v2, "nsdsResponses":[Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->retryForServerError([Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "processResponse - server error"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return v3

    .line 81
    .end local v2    # "nsdsResponses":[Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;
    :cond_1
    return v1
.end method

.method public retrieveAkaToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "deviceGroup"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "pushToken"    # Ljava/lang/String;
    .param p4, "vimsiEap"    # Ljava/lang/String;
    .param p5, "msisdn"    # Ljava/lang/String;
    .param p6, "includeAuthorizationHeader"    # Z

    .line 123
    iput-object p4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->mVIMSI:Ljava/lang/String;

    .line 124
    iput-object p5, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->mMSISDN:Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->mDeviceGroup:Ljava/lang/String;

    .line 127
    const-string v0, "conn-mgr"

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->mServiceName:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->mClientId:Ljava/lang/String;

    .line 129
    iput-object p3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->mPushToken:Ljava/lang/String;

    .line 130
    iput-boolean p6, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->mIncludeAuthorizationHeader:Z

    .line 131
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->executeOperationWithChallenge()V

    .line 132
    return-void
.end method

.method public retrieveAkaToken(Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 9
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "pushToken"    # Ljava/lang/String;
    .param p3, "includeAuthorizationHeader"    # Z
    .param p4, "retryInterval"    # J

    .line 92
    iput-wide p4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->mRetryInterval:J

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSHelper;->getVIMSIforSIMDevice(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "vimsiEap":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "msisdn":Ljava/lang/String;
    const-string v3, "Samsung-NSDS-CM-2.0"

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, v0

    move-object v7, v1

    move v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->retrieveAkaToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 98
    return-void
.end method

.method public shouldIncludeAuthHeader()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/RetrieveAkaToken;->mIncludeAuthorizationHeader:Z

    return v0
.end method
