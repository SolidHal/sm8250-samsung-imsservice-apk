.class public abstract Lcom/sec/internal/omanetapi/nc/BaseNCRequest;
.super Lcom/sec/internal/helper/httpclient/HttpRequestParams;
.source "BaseNCRequest.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x6ad83d12127f8bbaL


# instance fields
.field protected mBaseUrl:Ljava/lang/String;

.field protected transient mNCRequestHeaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "baseUrl"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    .line 42
    iput-object p1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mBaseUrl:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "serverRoot"    # Ljava/lang/String;
    .param p2, "apiVersion"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    .line 37
    sget-object v0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->TAG:Ljava/lang/String;

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->buildBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private buildBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "serverRoot"    # Ljava/lang/String;
    .param p2, "apiVersion"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .line 47
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 49
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "protocol":Ljava/lang/String;
    const-string v2, "notificationchannel"

    .line 52
    .local v2, "notificationChannel":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    const-string/jumbo v3, "pubsub"

    .line 54
    .local v3, "apiPath1":Ljava/lang/String;
    const-string v4, "oma_b"

    .line 55
    .local v4, "apiPath2":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 56
    invoke-virtual {v5, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    .line 57
    invoke-virtual {v5, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 58
    .end local v3    # "apiPath1":Ljava/lang/String;
    .end local v4    # "apiPath2":Ljava/lang/String;
    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 60
    invoke-virtual {v3, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 61
    invoke-virtual {v3, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 63
    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mBaseUrl:Ljava/lang/String;

    .line 65
    sget-object v4, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->TAG:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method


# virtual methods
.method protected abstract buildAPISpecificURLFromBase()V
.end method

.method public getRetryInstance(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0
    .param p1, "callback"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 132
    return-object p0
.end method

.method public getRetryInstance(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0
    .param p1, "callback"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "cloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;
    .param p3, "retryStackAdapterHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    .line 138
    return-object p0
.end method

.method public initCommonDeleteRequest()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 117
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 118
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->DELETE:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 120
    return-void
.end method

.method public initCommonGetRequest()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 109
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 110
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 112
    return-void
.end method

.method public initCommonPutRequest()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 125
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 126
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 128
    return-void
.end method

.method public initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "acceptContentType"    # Ljava/lang/String;
    .param p2, "authorization"    # Ljava/lang/String;

    .line 69
    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const-string v0, "application/json"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    const-string v0, "application/xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    const-string p1, "application/json"

    .line 76
    :cond_1
    move-object v0, p1

    .line 79
    .local v0, "accContentType":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 80
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    const-string v2, "Accept"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    const-string v2, "Authorization"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEnableATTHeader()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 91
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    const-string v2, "Connection"

    const-string v3, "close"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->VERSION_NAME:Ljava/lang/String;

    const-string/jumbo v3, "x-att-clientVersion"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->getHttpClientID()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "x-att-clientId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    sget-object v2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->BUILD_INFO:Ljava/lang/String;

    const-string/jumbo v3, "x-att-contextInfo"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mNCRequestHeaderMap:Ljava/util/Map;

    .line 102
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 101
    const-string/jumbo v3, "x-att-deviceId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_3
    return-void
.end method

.method public shouldCareAfterResponsePreProcess(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Object;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;I)Z
    .locals 7
    .param p1, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .param p3, "paramOMAResponseForBufDBObj"    # Ljava/lang/Object;
    .param p4, "dbParam"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .param p5, "overwriteEvent"    # I

    .line 144
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    .line 145
    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldCareAfterPreProcess(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Object;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;I)Z

    move-result v0

    .line 144
    return v0
.end method

.method public updateServerRoot(Ljava/lang/String;)V
    .locals 1
    .param p1, "serverRoot"    # Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mBaseUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->replaceHostOfURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mBaseUrl:Ljava/lang/String;

    .line 154
    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 155
    return-void
.end method
