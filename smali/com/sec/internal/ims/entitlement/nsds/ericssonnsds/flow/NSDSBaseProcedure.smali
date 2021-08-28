.class public abstract Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;
.super Landroid/os/Handler;
.source "NSDSBaseProcedure.java"


# static fields
.field protected static final BASE_OP_MAX_RETRY:I = 0x4

.field public static final EXEC_ENTITLEMENT_OP_WITH_CHALLENGE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final RESPONSE_RECEIVED:I = 0x1


# instance fields
.field protected mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

.field protected mContext:Landroid/content/Context;

.field protected mImeiForUA:Ljava/lang/String;

.field protected mIncludeAuthorizationHeader:Z

.field protected mMessenger:Landroid/os/Messenger;

.field protected mRetryCount:I

.field protected mRetryInterval:J

.field protected mUserAgent:Ljava/lang/String;

.field protected mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "baseFlowImpl"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;
    .param p4, "messenger"    # Landroid/os/Messenger;
    .param p5, "version"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mRetryCount:I

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mRetryInterval:J

    .line 68
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mContext:Landroid/content/Context;

    .line 69
    iput-object p3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 70
    iput-object p4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mMessenger:Landroid/os/Messenger;

    .line 71
    iput-object p5, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mVersion:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mUserAgent:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mImeiForUA:Ljava/lang/String;

    .line 74
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

    .line 78
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mRetryCount:I

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mRetryInterval:J

    .line 79
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mContext:Landroid/content/Context;

    .line 80
    iput-object p3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 81
    iput-object p4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mMessenger:Landroid/os/Messenger;

    .line 82
    iput-object p5, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mVersion:Ljava/lang/String;

    .line 83
    iput-object p6, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mUserAgent:Ljava/lang/String;

    .line 84
    iput-object p7, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mImeiForUA:Ljava/lang/String;

    .line 85
    return-void
.end method

.method private reportResult(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundleNSDSResponses"    # Landroid/os/Bundle;

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->getResponseMessage()Landroid/os/Message;

    move-result-object v0

    .line 145
    .local v0, "responseMessage":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 146
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 147
    .end local v0    # "responseMessage":Landroid/os/Message;
    goto :goto_0

    .line 148
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mMessenger is null:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    goto :goto_1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not send response to the caller"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method


# virtual methods
.method public abstract buildRequests(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSCommonParameters;)[Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
.end method

.method protected abstract executeOperationWithChallenge()V
.end method

.method protected getImeiForUA()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mImeiForUA:Ljava/lang/String;

    return-object v0
.end method

.method protected getMnoVSimStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    .line 230
    .local v0, "slotId":I
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->getMnoStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v1

    .line 231
    .local v1, "mnoStrategy":Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;
    return-object v1
.end method

.method protected getResponse3gppAuthenticatoin(Landroid/os/Bundle;)Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;
    .locals 2
    .param p1, "bundleNSDSResponses"    # Landroid/os/Bundle;

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "response3gppAuthentication":Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;
    if-eqz p1, :cond_0

    .line 102
    const-string v1, "3gppAuthentication"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;

    .line 104
    :cond_0
    return-object v0
.end method

.method protected abstract getResponseMessage()Landroid/os/Message;
.end method

.method protected getUserAgent()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method protected getVersionInfo()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 131
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown flow request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->executeOperationWithChallenge()V

    .line 112
    goto :goto_2

    .line 114
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->getResponse3gppAuthenticatoin(Landroid/os/Bundle;)Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->isResponseAkaChallenge(Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 116
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "REQUEST_MESSAGE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 117
    .local v2, "requestMessage":Landroid/os/Message;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->getResponse3gppAuthenticatoin(Landroid/os/Bundle;)Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;

    move-result-object v3

    .line 118
    .local v3, "response3gppAuthentication":Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;
    if-eqz v2, :cond_2

    iget v4, v2, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 119
    .local v1, "shouldIgnoreChallenge":Z
    :goto_0
    if-eqz v2, :cond_3

    if-nez v1, :cond_3

    .line 120
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v4, v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->resubmitWithChallenge(Landroid/os/Message;Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;)V

    goto :goto_1

    .line 122
    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->reportResult(Landroid/os/Bundle;)V

    .line 124
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "shouldIgnoreChallenge":Z
    .end local v2    # "requestMessage":Landroid/os/Message;
    .end local v3    # "response3gppAuthentication":Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;
    :goto_1
    goto :goto_2

    .line 125
    :cond_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->processResponse(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->reportResult(Landroid/os/Bundle;)V

    .line 133
    :cond_5
    :goto_2
    return-void
.end method

.method public isResponseAkaChallenge(Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;)Z
    .locals 2
    .param p1, "response3GppAuthentication"    # Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;

    .line 94
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;->responseCode:I

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isServerErrror(Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;)Z
    .locals 2
    .param p1, "nsdsResponse"    # Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;

    .line 213
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    const/16 v1, 0x457

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract processResponse(Landroid/os/Bundle;)Z
.end method

.method protected retryForServerError(Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;)Z
    .locals 4
    .param p1, "nsdsResponse"    # Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;

    .line 162
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retryForServerError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    const/16 v1, 0x457

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mRetryCount:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 166
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Failed with server error"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mRetryCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mRetryCount:I

    .line 168
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mRetryInterval:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->sendEmptyMessageDelayed(IJ)Z

    .line 169
    return v1

    .line 170
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    const/16 v2, 0x411

    if-eq v1, v2, :cond_1

    .line 173
    iput v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mRetryCount:I

    .line 175
    :cond_1
    return v0
.end method

.method protected retryForServerError([Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;)Z
    .locals 6
    .param p1, "nsdsResponses"    # [Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "serverError":Z
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 187
    .local v4, "nsdsResponse":Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->isServerErrror(Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 188
    const/4 v0, 0x1

    .line 189
    goto :goto_1

    .line 186
    .end local v4    # "nsdsResponse":Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 192
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->getMnoVSimStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v1

    .line 193
    .local v1, "mnoStrategy":Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mRetryCount:I

    .line 194
    invoke-interface {v1}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->getBaseOperationMaxRetry()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 195
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed with server error. Retrying count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mRetryCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mRetryCount:I

    .line 197
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->executeOperationWithChallenge()V

    .line 198
    return v3

    .line 202
    :cond_2
    iput v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/NSDSBaseProcedure;->mRetryCount:I

    .line 203
    return v2
.end method

.method public abstract shouldIncludeAuthHeader()Z
.end method
