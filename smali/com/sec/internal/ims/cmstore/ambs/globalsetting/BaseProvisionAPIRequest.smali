.class public Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;
.super Lcom/sec/internal/helper/httpclient/HttpRequestParams;
.source "BaseProvisionAPIRequest.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x3094db69a4e1e91aL


# instance fields
.field protected final transient mCookieStore:Lcom/sec/internal/ims/cmstore/PersistentHttpCookieStore;

.field protected transient mFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 1
    .param p1, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "clouldMessageManager"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 53
    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->prepareDefaultHeader(Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;-><init>(Ljava/util/Map;)V

    .line 32
    nop

    .line 34
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    check-cast v0, Ljava/net/CookieManager;

    .line 35
    invoke-virtual {v0}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/PersistentHttpCookieStore;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mCookieStore:Lcom/sec/internal/ims/cmstore/PersistentHttpCookieStore;

    .line 54
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 1
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p3, "clouldMessageManager"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 47
    invoke-static {p1, p3}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->prepareDefaultHeader(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;-><init>(Ljava/util/Map;)V

    .line 32
    nop

    .line 34
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    check-cast v0, Ljava/net/CookieManager;

    .line 35
    invoke-virtual {v0}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/PersistentHttpCookieStore;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mCookieStore:Lcom/sec/internal/ims/cmstore/PersistentHttpCookieStore;

    .line 48
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V
    .locals 1
    .param p2, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;",
            ")V"
        }
    .end annotation

    .line 41
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;-><init>(Ljava/util/Map;)V

    .line 32
    nop

    .line 34
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    check-cast v0, Ljava/net/CookieManager;

    .line 35
    invoke-virtual {v0}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/PersistentHttpCookieStore;

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mCookieStore:Lcom/sec/internal/ims/cmstore/PersistentHttpCookieStore;

    .line 42
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 43
    return-void
.end method

.method private static prepareDefaultHeader(Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Ljava/util/Map;
    .locals 3
    .param p0, "cloudMessageManager"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    .local v0, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {v0, p0}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->processDefaultHeader(Ljava/util/Map;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private static prepareDefaultHeader(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Ljava/util/Map;
    .locals 2
    .param p0, "contentType"    # Ljava/lang/String;
    .param p1, "cloudMessageManager"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    .local v0, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Content-Type"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->processDefaultHeader(Ljava/util/Map;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private static processDefaultHeader(Ljava/util/Map;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Ljava/util/Map;
    .locals 2
    .param p1, "cloudMessageManager"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    .local p0, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Connection"

    const-string v1, "close"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->VERSION_NAME:Ljava/lang/String;

    const-string/jumbo v1, "x-att-clientVersion"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->getHttpClientID()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x-att-clientId"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->BUILD_INFO:Ljava/lang/String;

    const-string/jumbo v1, "x-att-contextInfo"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x-att-deviceId"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-object p0
.end method


# virtual methods
.method protected checkAndHandleCPSError(Ljava/lang/String;)Z
    .locals 8
    .param p1, "resBody"    # Ljava/lang/String;

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 111
    return v1

    .line 116
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "jsonRoot":Lorg/json/JSONObject;
    const-string/jumbo v2, "requestError"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 118
    .local v2, "requestError":Lorg/json/JSONObject;
    if-nez v2, :cond_1

    .line 119
    return v1

    .line 121
    :cond_1
    const-string/jumbo v3, "serviceException"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 122
    .local v3, "serviceException":Lorg/json/JSONObject;
    const-string v4, "messageId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "messageId":Ljava/lang/String;
    const-string v5, "CPS.SVC-1007"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "CPS.SVC-1008"

    .line 124
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "CPS.SVC-1015"

    .line 125
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 132
    .end local v2    # "requestError":Lorg/json/JSONObject;
    .end local v3    # "serviceException":Lorg/json/JSONObject;
    .end local v4    # "messageId":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 126
    .restart local v2    # "requestError":Lorg/json/JSONObject;
    .restart local v3    # "serviceException":Lorg/json/JSONObject;
    .restart local v4    # "messageId":Ljava/lang/String;
    :cond_3
    :goto_0
    sget-object v5, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CPS errors: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->goFailedCall(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    const/4 v1, 0x1

    return v1

    .line 130
    .end local v0    # "jsonRoot":Lorg/json/JSONObject;
    .end local v2    # "requestError":Lorg/json/JSONObject;
    .end local v3    # "serviceException":Lorg/json/JSONObject;
    .end local v4    # "messageId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 133
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return v1
.end method

.method protected checkRetryAfter(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I
    .locals 5
    .param p1, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 137
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Retry-After"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 138
    .local v0, "retryAfterHeader":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 139
    .local v1, "retryAfter":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 140
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 141
    sget-object v2, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "retryAfter is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "seconds retryAfterHeader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v2, -0x1

    .line 145
    .local v2, "retryAfterValue":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 148
    goto :goto_0

    .line 146
    :catch_0
    move-exception v3

    .line 147
    .local v3, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 150
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    :goto_0
    return v2

    .line 152
    .end local v2    # "retryAfterValue":I
    :cond_0
    const/4 v2, -0x1

    return v2
.end method

.method public getRetryInstance(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0
    .param p1, "callback"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 157
    return-object p0
.end method

.method public getRetryInstance(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0
    .param p1, "callback"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "cloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;
    .param p3, "retryStackAdapterHelperr"    # Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    .line 163
    return-object p0
.end method

.method protected goFailedCall()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 102
    return-void
.end method

.method protected goFailedCall(Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method protected goSuccessfulCall()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 98
    return-void
.end method

.method protected goSuccessfulCall(Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->mFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public updateServerRoot(Ljava/lang/String;)V
    .locals 3
    .param p1, "serverRoot"    # Ljava/lang/String;

    .line 168
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateServerRoot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method
