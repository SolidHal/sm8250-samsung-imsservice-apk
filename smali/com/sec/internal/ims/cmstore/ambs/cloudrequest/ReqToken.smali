.class public Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;
.super Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;
.source "ReqToken.java"


# static fields
.field private static final serialVersionUID:J = 0x1b805138a1bb92aeL


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 2
    .param p1, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 28
    const-class v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->TAG:Ljava/lang/String;

    .line 32
    move-object v0, p0

    .line 33
    .local v0, "httpInterface":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 34
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->makePostData()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->setPostParams(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 35
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->updateUrl()V

    .line 37
    new-instance v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;-><init>(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    .line 25
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;
    .param p1, "x1"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->removeLastNewLineChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    .line 25
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->goSuccessfulCall()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;
    .param p1, "x1"    # Ljava/lang/String;

    .line 25
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->goFailedCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;
    .param p1, "x1"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 25
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->checkRetryAfter(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;
    .param p1, "x1"    # Ljava/lang/String;

    .line 25
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->goFailedCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    .line 25
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->goFailedCall()V

    return-void
.end method

.method private makePostData()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v0, "postData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "TG_OP"

    const-string v2, "TokenGen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->APP_ID:Ljava/lang/String;

    const-string v2, "appID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ctnID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAuthZCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "authZCode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-object v0
.end method

.method private removeLastNewLineChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "atsToken"    # Ljava/lang/String;

    .line 78
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 82
    :cond_0
    return-object p1
.end method


# virtual methods
.method public getRetryInstance(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 1
    .param p1, "callback"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "cloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;
    .param p3, "retryStackAdapterHelperr"    # Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    .line 105
    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    return-object v0
.end method

.method public updateUrl()V
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ACMS_HOST_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/commonLogin/nxsATS/TokenGen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 88
    return-void
.end method
