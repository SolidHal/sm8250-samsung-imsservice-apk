.class public Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;
.super Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;
.source "RequestDeleteAccount.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x5c1fe16d79df0070L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 2
    .param p1, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 36
    const-string v0, "application/json"

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;-><init>(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 37
    move-object v0, p0

    .line 38
    .local v0, "httpInterface":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->DELETE:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 40
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;->updateUrl()V

    .line 42
    new-instance v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount$1;-><init>(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 101
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    .line 27
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;->goFailedCall()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    .line 27
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;->goSuccessfulCall()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    .line 27
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;->goFailedCall()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    .line 27
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;->goFailedCall()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;
    .param p1, "x1"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 27
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;->checkRetryAfter(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;
    .param p1, "x1"    # Ljava/lang/String;

    .line 27
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;->checkAndHandleCPSError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    .line 27
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;->goFailedCall()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    .line 27
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;->goFailedCall()V

    return-void
.end method


# virtual methods
.method public getRetryInstance(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 1
    .param p1, "callback"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "cloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;
    .param p3, "retryStackAdapterHelperr"    # Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    .line 111
    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    return-object v0
.end method

.method public updateUrl()V
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->CPS_HOST_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/svcaccount/v1/msgstoreoemtbs?deleteAll=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 106
    return-void
.end method
