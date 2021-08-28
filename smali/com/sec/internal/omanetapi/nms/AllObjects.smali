.class public Lcom/sec/internal/omanetapi/nms/AllObjects;
.super Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;
.source "AllObjects.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x31656d5fbbc44eb9L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/sec/internal/omanetapi/nms/AllObjects;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/omanetapi/nms/AllObjects;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseUrl"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "serverRoot"    # Ljava/lang/String;
    .param p2, "apiVersion"    # Ljava/lang/String;
    .param p3, "storeName"    # Ljava/lang/String;
    .param p4, "boxId"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/sec/internal/omanetapi/nms/AllObjects;->buildAPISpecificURLFromBase()V

    .line 34
    return-void
.end method


# virtual methods
.method protected buildAPISpecificURLFromBase()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/AllObjects;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 79
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "objects"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 81
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/omanetapi/nms/AllObjects;->mBaseUrl:Ljava/lang/String;

    .line 82
    sget-object v1, Lcom/sec/internal/omanetapi/nms/AllObjects;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/omanetapi/nms/AllObjects;->mBaseUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method public initPostRequest(Lcom/sec/internal/omanetapi/nms/data/Object;ZLcom/sec/internal/helper/httpclient/HttpPostBody;)V
    .locals 7
    .param p1, "object"    # Lcom/sec/internal/omanetapi/nms/data/Object;
    .param p2, "isJson"    # Z
    .param p3, "payloads"    # Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 42
    if-nez p3, :cond_0

    .line 43
    return-void

    .line 45
    :cond_0
    sget-object v0, Lcom/sec/internal/omanetapi/nms/AllObjects;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPostRequest: postBody: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/AllObjects;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nms/AllObjects;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 49
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/AllObjects;->mNMSRequestHeaderMap:Ljava/util/Map;

    const-string v1, "Content-Type"

    const-string v2, "multipart/form-data"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/AllObjects;->mNMSRequestHeaderMap:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nms/AllObjects;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 52
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nms/AllObjects;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nms/AllObjects;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v0, "requestParts":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    if-eqz p2, :cond_1

    .line 60
    new-instance v1, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$AllObjectRequest;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$AllObjectRequest;-><init>()V

    .line 61
    .local v1, "objectParam":Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$AllObjectRequest;
    iput-object p1, v1, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$AllObjectRequest;->object:Lcom/sec/internal/omanetapi/nms/data/Object;

    .line 62
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 63
    .local v2, "gson":Lcom/google/gson/Gson;
    new-instance v3, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 67
    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "form-data; name=\"root-fields\""

    const-string v6, "application/json"

    invoke-direct {v3, v5, v6, v4}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .end local v1    # "objectParam":Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$AllObjectRequest;
    .end local v2    # "gson":Lcom/google/gson/Gson;
    :cond_1
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v1, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v1, v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/sec/internal/omanetapi/nms/AllObjects;->setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 74
    return-void
.end method
