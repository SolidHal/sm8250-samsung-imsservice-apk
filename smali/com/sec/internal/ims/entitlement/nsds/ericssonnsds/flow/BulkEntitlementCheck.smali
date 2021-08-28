.class public Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;
.super Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;
.source "BulkEntitlementCheck.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mIncludeGetMSISDN:Z

.field private mServiceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;->LOG_TAG:Ljava/lang/String;

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

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;->mServiceList:Ljava/util/ArrayList;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;->mIncludeGetMSISDN:Z

    .line 33
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;->LOG_TAG:Ljava/lang/String;

    const-string v1, "created."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method


# virtual methods
.method public buildRequests(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;)[Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    .locals 10
    .param p1, "nsdsCommonParams"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;

    .line 39
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getNSDSClient()Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;

    move-result-object v0

    .line 40
    .local v0, "nsdsClient":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    move-object v9, v1

    .line 41
    .local v9, "messageIdGenerator":Ljava/util/concurrent/atomic/AtomicInteger;
    nop

    .line 42
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 43
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getChallengeResponse()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getAkaToken()Ljava/lang/String;

    move-result-object v5

    .line 44
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getImsiEap()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    .line 42
    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildAuthenticationRequest(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;

    move-result-object v1

    .line 45
    .local v1, "requestAuthentication":Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    nop

    .line 46
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;->mServiceList:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildServiceEntitlementStatusRequest(ILjava/util/ArrayList;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/RequestServiceEntitlementStatus;

    move-result-object v2

    .line 48
    .local v2, "requestServiceEntitlementStatus":Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    iget-boolean v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;->mIncludeGetMSISDN:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v3, :cond_0

    .line 49
    nop

    .line 50
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    .line 49
    invoke-virtual {v0, v3, v7}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->buildGetMSISDNRequest(ILjava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/RequestGetMSISDN;

    move-result-object v3

    .line 51
    .local v3, "requestGetMSISDN":Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    const/4 v7, 0x3

    new-array v7, v7, [Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;

    aput-object v1, v7, v5

    aput-object v2, v7, v4

    aput-object v3, v7, v6

    return-object v7

    .line 54
    .end local v3    # "requestGetMSISDN":Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
    :cond_0
    new-array v3, v6, [Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;

    aput-object v1, v3, v5

    aput-object v2, v3, v4

    return-object v3
.end method

.method public checkBulkEntitlement(Ljava/util/List;Z)V
    .locals 1
    .param p2, "includeGetMSISN"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 97
    .local p1, "serviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;->mServiceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    iput-boolean p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;->mIncludeGetMSISDN:Z

    .line 99
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;->executeOperationWithChallenge()V

    .line 100
    return-void
.end method

.method public checkBulkEntitlement(Ljava/util/List;ZJ)V
    .locals 0
    .param p2, "includeGetMSISN"    # Z
    .param p3, "retryInterval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZJ)V"
        }
    .end annotation

    .line 103
    .local p1, "serviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-wide p3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;->mRetryInterval:J

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;->checkBulkEntitlement(Ljava/util/List;Z)V

    .line 105
    return-void
.end method

.method protected executeOperationWithChallenge()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->performOperation(ILcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;Landroid/os/Messenger;)V

    .line 85
    return-void
.end method

.method protected getResponseMessage()Landroid/os/Message;
    .locals 2

    .line 61
    const/4 v0, 0x0

    const/16 v1, 0x65

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected processResponse(Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "bundleNSDSResponses"    # Landroid/os/Bundle;

    .line 66
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processResponse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "responseServiceEntitlementStatus":Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;
    if-eqz p1, :cond_0

    .line 69
    const-string/jumbo v1, "serviceEntitlementStatus"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;

    goto :goto_0

    .line 71
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "responseCollection is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;->retryForServerError(Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public shouldIncludeAuthHeader()Z
    .locals 1

    .line 79
    const/4 v0, 0x0

    return v0
.end method
