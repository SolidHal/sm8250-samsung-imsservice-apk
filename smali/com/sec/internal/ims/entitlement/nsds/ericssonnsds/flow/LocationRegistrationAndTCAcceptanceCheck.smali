.class public Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;
.super Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;
.source "LocationRegistrationAndTCAcceptanceCheck.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mMessenger:Landroid/os/Messenger;

.field private mServiceFingerPrint:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;

    .line 34
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;->LOG_TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "baseFlowImpl"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;
    .param p4, "messenger"    # Landroid/os/Messenger;
    .param p5, "version"    # Ljava/lang/String;

    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V

    .line 42
    iput-object p4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;->mMessenger:Landroid/os/Messenger;

    .line 43
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;->LOG_TAG:Ljava/lang/String;

    const-string v1, "created."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method


# virtual methods
.method public buildRequests(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;)[Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    .locals 10
    .param p1, "nsdsCommonParams"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;

    .line 48
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getNSDSClient()Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;

    move-result-object v0

    .line 49
    .local v0, "nsdsClient":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    move-object v9, v1

    .line 50
    .local v9, "messageIdGenerator":Ljava/util/concurrent/atomic/AtomicInteger;
    nop

    .line 51
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 52
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getChallengeResponse()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getAkaToken()Ljava/lang/String;

    move-result-object v5

    .line 53
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getImsiEap()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    .line 51
    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildAuthenticationRequest(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;

    move-result-object v1

    .line 54
    .local v1, "requestAuthentication":Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    nop

    .line 55
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;->mServiceFingerPrint:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 55
    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildManageLocationAndTCRequest(ILjava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/RequestManageLocationAndTC;

    move-result-object v2

    .line 57
    .local v2, "requestManageLocationAndTC":Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    return-object v3
.end method

.method public checkLocationAndTC(Ljava/lang/String;ZJ)V
    .locals 0
    .param p1, "serviceFingerPrint"    # Ljava/lang/String;
    .param p2, "includeAuthorizationHeader"    # Z
    .param p3, "retryInterval"    # J

    .line 131
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;->mServiceFingerPrint:Ljava/lang/String;

    .line 132
    iput-boolean p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;->mIncludeAuthorizationHeader:Z

    .line 133
    iput-wide p3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;->mRetryInterval:J

    .line 134
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;->executeOperationWithChallenge()V

    .line 135
    return-void
.end method

.method protected executeOperationWithChallenge()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const/16 v2, 0x21

    invoke-virtual {v0, v2, p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->performOperation(ILcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;Landroid/os/Messenger;)V

    .line 122
    return-void
.end method

.method protected getResponseMessage()Landroid/os/Message;
    .locals 2

    .line 63
    const/4 v0, 0x0

    const/16 v1, 0x68

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected processResponse(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "bundleNSDSResponses"    # Landroid/os/Bundle;

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "responseManageLocationAndTC":Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;
    if-eqz p1, :cond_0

    .line 70
    const-string v1, "manageLocationAndTC"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;

    .line 73
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;->retryForServerError(Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    const/4 v1, 0x0

    return v1

    .line 77
    :cond_1
    if-eqz v0, :cond_2

    .line 78
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleResponseManageLocationAndTC : messageId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->messageId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "responseCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageLocationAndTC;->responseCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method protected retryForServerError(Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;)Z
    .locals 9
    .param p1, "nsdsResponse"    # Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;

    .line 87
    invoke-super {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->retryForServerError(Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 88
    return v1

    .line 91
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    const/16 v3, 0x411

    if-ne v2, v3, :cond_3

    .line 92
    iget v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;->mRetryCount:I

    if-ge v2, v1, :cond_1

    .line 93
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed with ERROR_INVALID_FINGERPRINT. Retrying count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;->mRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;->mRetryCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;->mRetryCount:I

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v0, "serviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "vowifi"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;

    .line 98
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    iget-object v7, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;->mMessenger:Landroid/os/Messenger;

    const-string v8, "1.0"

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V

    .line 99
    .local v2, "bulkEntitlementCheck":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;
    invoke-virtual {v2, v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;->checkBulkEntitlement(Ljava/util/List;Z)V

    .line 100
    return v1

    .line 101
    .end local v0    # "serviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "bulkEntitlementCheck":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;
    :cond_1
    iget v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;->mRetryCount:I

    if-ne v2, v1, :cond_3

    .line 102
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->getInstance()Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->getNsdsModule(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object v2

    .line 103
    .local v2, "nsdsModule":Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    if-nez v2, :cond_2

    .line 104
    return v0

    .line 106
    :cond_2
    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->deactivateSimDevice(I)V

    .line 107
    return v1

    .line 111
    .end local v2    # "nsdsModule":Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    :cond_3
    return v0
.end method

.method public shouldIncludeAuthHeader()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/LocationRegistrationAndTCAcceptanceCheck;->mIncludeAuthorizationHeader:Z

    return v0
.end method
