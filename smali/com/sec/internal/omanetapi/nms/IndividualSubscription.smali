.class public Lcom/sec/internal/omanetapi/nms/IndividualSubscription;
.super Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;
.source "IndividualSubscription.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x667787daac51a54L


# instance fields
.field private mSubscriptionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/sec/internal/omanetapi/nms/IndividualSubscription;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/omanetapi/nms/IndividualSubscription;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "serverRoot"    # Ljava/lang/String;
    .param p2, "apiVersion"    # Ljava/lang/String;
    .param p3, "storeName"    # Ljava/lang/String;
    .param p4, "boxId"    # Ljava/lang/String;
    .param p5, "subscriptionId"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iput-object p5, p0, Lcom/sec/internal/omanetapi/nms/IndividualSubscription;->mSubscriptionId:Ljava/lang/String;

    .line 35
    invoke-virtual {p0}, Lcom/sec/internal/omanetapi/nms/IndividualSubscription;->buildAPISpecificURLFromBase()V

    .line 36
    return-void
.end method


# virtual methods
.method protected buildAPISpecificURLFromBase()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/IndividualSubscription;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 70
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v1, "subscriptions"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 72
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/IndividualSubscription;->mSubscriptionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 74
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/omanetapi/nms/IndividualSubscription;->mBaseUrl:Ljava/lang/String;

    .line 75
    sget-object v1, Lcom/sec/internal/omanetapi/nms/IndividualSubscription;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/omanetapi/nms/IndividualSubscription;->mBaseUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public initPostRequest(Lcom/sec/internal/omanetapi/nms/data/NmsSubscriptionUpdate;Z)V
    .locals 5
    .param p1, "update"    # Lcom/sec/internal/omanetapi/nms/data/NmsSubscriptionUpdate;
    .param p2, "isJson"    # Z

    .line 45
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/IndividualSubscription;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nms/IndividualSubscription;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 46
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nms/IndividualSubscription;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nms/IndividualSubscription;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    if-eqz p2, :cond_0

    .line 51
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/IndividualSubscription;->mNMSRequestHeaderMap:Ljava/util/Map;

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/IndividualSubscription;->mNMSRequestHeaderMap:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/sec/internal/omanetapi/nms/IndividualSubscription;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 54
    new-instance v1, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$NmsSubscriptionUpdateRequest;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$NmsSubscriptionUpdateRequest;-><init>()V

    .line 56
    .local v1, "request":Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$NmsSubscriptionUpdateRequest;
    iput-object p1, v1, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$NmsSubscriptionUpdateRequest;->nmsSubscriptionUpdate:Lcom/sec/internal/omanetapi/nms/data/NmsSubscriptionUpdate;

    .line 57
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 58
    .local v2, "gson":Lcom/google/gson/Gson;
    new-instance v3, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 62
    .end local v1    # "request":Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$NmsSubscriptionUpdateRequest;
    .end local v2    # "gson":Lcom/google/gson/Gson;
    :cond_0
    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nms/IndividualSubscription;->setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 65
    :cond_1
    return-void
.end method
