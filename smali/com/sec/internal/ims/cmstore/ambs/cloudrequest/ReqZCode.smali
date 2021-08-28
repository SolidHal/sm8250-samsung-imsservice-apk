.class public Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;
.super Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;
.source "ReqZCode.java"


# static fields
.field public static final REQUET_ID_PRIX:Ljava/lang/String; = "AMBS"

.field private static final TAG:Ljava/lang/String;

.field public static final ZCODE_SEND_FROM:Ljava/lang/String; = "74611666"

.field public static final ZCODE_SEND_FROM_FFA:Ljava/lang/String; = "74611888"

.field public static final ZCODE_SMS_BEGIN:Ljava/lang/String; = "AT&T FREE MESSAGE - This is an automated message, please ignore."

.field private static volatile lastRequestKey:Ljava/lang/String; = null

.field private static final mMaxRequestIdDigitLength:I = 0x4

.field private static final serialVersionUID:J = -0x5ff4f571a60de39eL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 2
    .param p1, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 41
    move-object v0, p0

    .line 42
    .local v0, "httpInterface":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 44
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->makePostData()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->setPostParams(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 46
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->updateUrl()V

    .line 48
    new-instance v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode$1;-><init>(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 81
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;
    .param p1, "x1"    # Ljava/lang/String;

    .line 27
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->goFailedCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;
    .param p1, "x1"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 27
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->checkRetryAfter(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;

    .line 27
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->goFailedCall()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;

    .line 27
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->goFailedCall()V

    return-void
.end method

.method public static handleSmsZCode(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)V
    .locals 7
    .param p0, "zcodeBody"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "retryStackAdapterHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    .line 126
    const-class v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;

    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->lastRequestKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->lastRequestKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getZCodeLastRequestId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->lastRequestKey:Ljava/lang/String;

    .line 129
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "read last requestId from preference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->lastRequestKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSmsZCode() lastReqKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->lastRequestKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " zcodeBody: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->lastRequestKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->lastRequestKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v2, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->lastRequestKey:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->lastRequestKey:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-lt v1, v2, :cond_3

    .line 137
    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->lastRequestKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->lastRequestKey:Ljava/lang/String;

    .line 138
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 137
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "zcode":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveAuthZCode(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeUserInputNumberCount()V

    .line 141
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->getLastFailedRequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v2

    .line 142
    .local v2, "top":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    if-eqz v2, :cond_2

    .line 143
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->pop()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v0

    .line 145
    .local v0, "popApi":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    if-nez v0, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "topApiName":Ljava/lang/String;
    :goto_0
    sget-object v4, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "API "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Pop from Retry Stack"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v0    # "popApi":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .end local v3    # "topApiName":Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_ATS_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFixedFlow(I)V

    .line 151
    .end local v1    # "zcode":Ljava/lang/String;
    .end local v2    # "top":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    :cond_3
    return-void
.end method

.method public static isSmsZCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "zcodeBody"    # Ljava/lang/String;
    .param p1, "fromNumber"    # Ljava/lang/String;

    .line 110
    const-string v0, "AT&T FREE MESSAGE - This is an automated message, please ignore."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 111
    const-string v0, "AMBS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    return v1

    .line 114
    :cond_0
    const-string v0, "74611666"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 115
    return v2

    .line 117
    :cond_1
    const-string v0, "74611888"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    return v2

    .line 121
    :cond_2
    return v1
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

    .line 93
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->makeRequestId(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->lastRequestKey:Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReqZCode() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->lastRequestKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->lastRequestKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveZCodeLastRequestId(Ljava/lang/String;)V

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v0, "postData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "TG_OP"

    const-string v2, "AuthZCode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->APP_ID:Ljava/lang/String;

    const-string v2, "appID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ctnID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->lastRequestKey:Ljava/lang/String;

    const-string/jumbo v2, "requestID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-object v0
.end method

.method private makeRequestId(I)Ljava/lang/String;
    .locals 3
    .param p1, "length"    # I

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AMBS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p1, v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/AmbsUtils;->generateRandomString(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getRetryInstance(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 1
    .param p1, "callback"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "cloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;
    .param p3, "retryStackAdapterHelperr"    # Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    .line 156
    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    return-object v0
.end method

.method public updateUrl()V
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ACMS_HOST_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/commonLogin/nxsATS/AuthZCode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 90
    return-void
.end method
