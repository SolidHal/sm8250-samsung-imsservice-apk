.class public Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;
.super Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;
.source "RequestAccount.java"


# static fields
.field private static final ACCOUNT_STATUS_Active:Ljava/lang/String; = "Active"

.field private static final ACCOUNT_STATUS_PROVISIONED:Ljava/lang/String; = "Provisioned"

.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x79da6aac0301388dL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V
    .locals 2
    .param p1, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 39
    new-instance v0, Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;-><init>()V

    const-string v1, "application/json"

    invoke-direct {p0, v1, p1, v0}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;-><init>(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 40
    move-object v0, p0

    .line 42
    .local v0, "httpInterface":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 44
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->updateUrl()V

    .line 46
    new-instance v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;-><init>(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 107
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;
    .param p1, "x1"    # Ljava/lang/String;

    .line 28
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->goSuccessfulCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;
    .param p1, "x1"    # Ljava/lang/String;

    .line 28
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->goSuccessfulCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;
    .param p1, "x1"    # Ljava/lang/String;

    .line 28
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->goSuccessfulCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;
    .param p1, "x1"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 28
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->checkRetryAfter(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;
    .param p1, "x1"    # Ljava/lang/String;

    .line 28
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->checkAndHandleCPSError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;
    .param p1, "x1"    # Ljava/lang/String;

    .line 28
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->goFailedCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    .line 28
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->goFailedCall()V

    return-void
.end method

.method public static handleExternalUserOptIn(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 110
    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V

    const-string v1, "HAP.REQACCOUNT.BINARY_SMS_PROVISIONED"

    invoke-interface {p0, v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    .line 111
    return-void
.end method


# virtual methods
.method public getRetryInstance(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 1
    .param p1, "callback"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "cloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;
    .param p3, "retryStackAdapterHelperr"    # Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    .line 121
    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V

    return-object v0
.end method

.method public updateUrl()V
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->CPS_HOST_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/svcaccount/v1/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "msgstoreoemtbs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 116
    return-void
.end method
