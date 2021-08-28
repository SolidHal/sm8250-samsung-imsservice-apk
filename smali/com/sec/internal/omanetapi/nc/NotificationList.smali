.class public Lcom/sec/internal/omanetapi/nc/NotificationList;
.super Lcom/sec/internal/omanetapi/nc/BaseNCRequest;
.source "NotificationList.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x165e7c5f81963327L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/sec/internal/omanetapi/nc/NotificationList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/omanetapi/nc/NotificationList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "baseUrl"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;-><init>(Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/sec/internal/omanetapi/nc/NotificationList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotificationList: baseUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/omanetapi/nc/NotificationList;->mBaseUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "serverRoot"    # Ljava/lang/String;
    .param p2, "apiVersion"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "serverUrl"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/sec/internal/omanetapi/nc/NotificationList;->buildAPISpecificURLFromBase()V

    .line 35
    return-void
.end method


# virtual methods
.method protected buildAPISpecificURLFromBase()V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nc/NotificationList;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 74
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/omanetapi/nc/NotificationList;->mBaseUrl:Ljava/lang/String;

    .line 75
    sget-object v1, Lcom/sec/internal/omanetapi/nc/NotificationList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationList: baseUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/omanetapi/nc/NotificationList;->mBaseUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public initPostRequest(Lcom/sec/internal/omanetapi/nc/data/LongPollingRequestParameters;Z)V
    .locals 5
    .param p1, "longPollingRequestParameters"    # Lcom/sec/internal/omanetapi/nc/data/LongPollingRequestParameters;
    .param p2, "isJson"    # Z

    .line 45
    new-instance v0, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$NotificationListRequest;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$NotificationListRequest;-><init>()V

    .line 46
    .local v0, "request":Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$NotificationListRequest;
    iput-object p1, v0, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$NotificationListRequest;->longPollingRequestParameters:Lcom/sec/internal/omanetapi/nc/data/LongPollingRequestParameters;

    .line 48
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nc/NotificationList;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/internal/omanetapi/nc/NotificationList;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 49
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v1}, Lcom/sec/internal/omanetapi/nc/NotificationList;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 50
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/internal/omanetapi/nc/NotificationList;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 51
    sget-object v1, Lcom/sec/internal/omanetapi/nc/NotificationList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initPostRequest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v1, 0x0

    .line 54
    .local v1, "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    if-eqz p2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/sec/internal/omanetapi/nc/NotificationList;->mNCRequestHeaderMap:Ljava/util/Map;

    const-string v3, "Content-Type"

    const-string v4, "application/json"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v2, p0, Lcom/sec/internal/omanetapi/nc/NotificationList;->mNCRequestHeaderMap:Ljava/util/Map;

    invoke-virtual {p0, v2}, Lcom/sec/internal/omanetapi/nc/NotificationList;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 58
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    .line 60
    .local v2, "gson":Lcom/google/gson/Gson;
    new-instance v3, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 65
    .end local v2    # "gson":Lcom/google/gson/Gson;
    :cond_0
    if-eqz v1, :cond_1

    .line 66
    sget-object v2, Lcom/sec/internal/omanetapi/nc/NotificationList;->TAG:Ljava/lang/String;

    const-string v3, "initPostRequest"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0, v1}, Lcom/sec/internal/omanetapi/nc/NotificationList;->setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 69
    :cond_1
    return-void
.end method
