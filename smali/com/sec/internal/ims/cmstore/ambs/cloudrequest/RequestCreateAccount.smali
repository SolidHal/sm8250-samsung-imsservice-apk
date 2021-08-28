.class public Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;
.super Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;
.source "RequestCreateAccount.java"


# static fields
.field private static final serialVersionUID:J = -0x72e4ac71ac76d04fL


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 2
    .param p1, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 33
    const-string v0, "application/json"

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;-><init>(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 29
    const-class v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;->TAG:Ljava/lang/String;

    .line 34
    move-object v0, p0

    .line 35
    .local v0, "httpInterface":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 37
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;->makePostData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;->setPostBody(Lorg/json/JSONObject;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 39
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;->updateUrl()V

    .line 41
    new-instance v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount$1;-><init>(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;

    .line 25
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;

    .line 25
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;->goSuccessfulCall()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;
    .param p1, "x1"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 25
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;->checkRetryAfter(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;
    .param p1, "x1"    # Ljava/lang/String;

    .line 25
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;->checkAndHandleCPSError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;
    .param p1, "x1"    # Ljava/lang/String;

    .line 25
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;->goFailedCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;
    .param p1, "x1"    # Ljava/lang/String;

    .line 25
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;->goFailedCall(Ljava/lang/String;)V

    return-void
.end method

.method private makePostData()Lorg/json/JSONObject;
    .locals 7

    .line 91
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getTermConditionId()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "strTcId":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 94
    .local v1, "root":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 95
    .local v2, "tc":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 97
    .local v3, "tcParent":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v4, "id"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string v4, "action"

    const-string v5, "Accept"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string/jumbo v4, "tc"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string v4, "createServiceAccountRequest"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    return-object v1

    .line 103
    .end local v1    # "root":Lorg/json/JSONObject;
    .end local v2    # "tc":Lorg/json/JSONObject;
    .end local v3    # "tcParent":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .end local v1    # "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getRetryInstance(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 1
    .param p1, "callback"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "cloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;
    .param p3, "retryStackAdapterHelperr"    # Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    .line 112
    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    return-object v0
.end method

.method public updateUrl()V
    .locals 2

    .line 84
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

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 87
    return-void
.end method
