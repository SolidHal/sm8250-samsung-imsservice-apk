.class public Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;
.super Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;
.source "OperationUsingManageConnectivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mDeviceGroup:Ljava/lang/String;

.field protected mOperation:I

.field protected mRemoteDeviceId:Ljava/lang/String;

.field protected mVIMSI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;->LOG_TAG:Ljava/lang/String;

    .line 23
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

    .line 33
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "created."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method


# virtual methods
.method public buildRequests(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;)[Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    .locals 11
    .param p1, "nsdsCommonParams"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;

    .line 39
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getNSDSClient()Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;

    move-result-object v0

    .line 41
    .local v0, "nsdsClient":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    move-object v9, v1

    .line 42
    .local v9, "messageIdGenerator":Ljava/util/concurrent/atomic/AtomicInteger;
    nop

    .line 43
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 44
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getChallengeResponse()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getAkaToken()Ljava/lang/String;

    move-result-object v5

    .line 45
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getImsiEap()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    .line 43
    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildAuthenticationRequest(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;

    move-result-object v10

    .line 46
    .local v10, "requestAuthentication":Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    nop

    .line 47
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;->mOperation:I

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;->mVIMSI:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;->mRemoteDeviceId:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;->mDeviceGroup:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    .line 47
    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildManageConnectivityRequest(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity;

    move-result-object v1

    .line 49
    .local v1, "requestManageConnectivity":Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    return-object v2
.end method

.method protected executeOperationWithChallenge()V
    .locals 3

    .line 88
    const/16 v0, 0x1f

    .line 89
    .local v0, "baseFlowMsgType":I
    iget v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;->mOperation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 90
    const/16 v0, 0x26

    goto :goto_0

    .line 91
    :cond_0
    if-nez v1, :cond_1

    .line 92
    const/16 v0, 0x1f

    goto :goto_0

    .line 93
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 94
    const/16 v0, 0x28

    .line 97
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, v0, p0, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->performOperation(ILcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;Landroid/os/Messenger;)V

    .line 98
    return-void
.end method

.method protected getResponseMessage()Landroid/os/Message;
    .locals 3

    .line 55
    const/16 v0, 0x66

    .line 56
    .local v0, "respMsgId":I
    iget v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;->mOperation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 57
    const/16 v0, 0x6d

    goto :goto_0

    .line 58
    :cond_0
    if-nez v1, :cond_1

    .line 59
    const/16 v0, 0x66

    goto :goto_0

    .line 60
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 61
    const/16 v0, 0x6f

    .line 63
    :cond_2
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method protected processResponse(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "bundleNSDSResponses"    # Landroid/os/Bundle;

    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "responseManageConnectivity":Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;
    if-eqz p1, :cond_0

    .line 70
    const-string v1, "manageConnectivity"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;

    goto :goto_0

    .line 72
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "responseCollection is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_0
    iget v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;->mOperation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 77
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;->retryForServerError(Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 76
    :goto_2
    return v1
.end method

.method public shouldIncludeAuthHeader()Z
    .locals 1

    .line 82
    const/4 v0, 0x1

    return v0
.end method
