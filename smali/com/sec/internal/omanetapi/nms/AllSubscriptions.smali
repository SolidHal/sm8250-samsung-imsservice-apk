.class public Lcom/sec/internal/omanetapi/nms/AllSubscriptions;
.super Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;
.source "AllSubscriptions.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/sec/internal/omanetapi/nms/AllSubscriptions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/omanetapi/nms/AllSubscriptions;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "serverRoot"    # Ljava/lang/String;
    .param p2, "apiVersion"    # Ljava/lang/String;
    .param p3, "storeName"    # Ljava/lang/String;
    .param p4, "boxId"    # Ljava/lang/String;

    .line 27
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    invoke-virtual {p0}, Lcom/sec/internal/omanetapi/nms/AllSubscriptions;->buildAPISpecificURLFromBase()V

    .line 30
    return-void
.end method


# virtual methods
.method protected buildAPISpecificURLFromBase()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/AllSubscriptions;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 59
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v1, "subscriptions"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 60
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/omanetapi/nms/AllSubscriptions;->mBaseUrl:Ljava/lang/String;

    .line 61
    sget-object v1, Lcom/sec/internal/omanetapi/nms/AllSubscriptions;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/omanetapi/nms/AllSubscriptions;->mBaseUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public initPostRequest(Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;Z)V
    .locals 5
    .param p1, "subscription"    # Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;
    .param p2, "isJson"    # Z

    .line 34
    new-instance v0, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$AllSubscriptionRequest;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$AllSubscriptionRequest;-><init>()V

    .line 35
    .local v0, "request":Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$AllSubscriptionRequest;
    iput-object p1, v0, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$AllSubscriptionRequest;->nmsSubscription:Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;

    .line 37
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/AllSubscriptions;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/internal/omanetapi/nms/AllSubscriptions;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 38
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v1}, Lcom/sec/internal/omanetapi/nms/AllSubscriptions;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 39
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/internal/omanetapi/nms/AllSubscriptions;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 41
    const/4 v1, 0x0

    .line 42
    .local v1, "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    if-eqz p2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/sec/internal/omanetapi/nms/AllSubscriptions;->mNMSRequestHeaderMap:Ljava/util/Map;

    const-string v3, "Content-Type"

    const-string v4, "application/json"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v2, p0, Lcom/sec/internal/omanetapi/nms/AllSubscriptions;->mNMSRequestHeaderMap:Ljava/util/Map;

    invoke-virtual {p0, v2}, Lcom/sec/internal/omanetapi/nms/AllSubscriptions;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 46
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 47
    .local v2, "gson":Lcom/google/gson/Gson;
    new-instance v3, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 51
    .end local v2    # "gson":Lcom/google/gson/Gson;
    :cond_0
    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {p0, v1}, Lcom/sec/internal/omanetapi/nms/AllSubscriptions;->setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 54
    :cond_1
    return-void
.end method
