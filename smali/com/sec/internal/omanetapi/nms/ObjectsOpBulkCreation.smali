.class public Lcom/sec/internal/omanetapi/nms/ObjectsOpBulkCreation;
.super Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;
.source "ObjectsOpBulkCreation.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/sec/internal/omanetapi/nms/ObjectsOpBulkCreation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/omanetapi/nms/ObjectsOpBulkCreation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "serverRoot"    # Ljava/lang/String;
    .param p2, "apiVersion"    # Ljava/lang/String;
    .param p3, "storeName"    # Ljava/lang/String;
    .param p4, "boxId"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/sec/internal/omanetapi/nms/ObjectsOpBulkCreation;->buildAPISpecificURLFromBase()V

    .line 32
    return-void
.end method


# virtual methods
.method protected buildAPISpecificURLFromBase()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/ObjectsOpBulkCreation;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 70
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "objects"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 71
    const-string/jumbo v1, "operations"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 72
    const-string v1, "bulkCreation"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 74
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/omanetapi/nms/ObjectsOpBulkCreation;->mBaseUrl:Ljava/lang/String;

    .line 75
    sget-object v1, Lcom/sec/internal/omanetapi/nms/ObjectsOpBulkCreation;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/omanetapi/nms/ObjectsOpBulkCreation;->mBaseUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public initPostRequest(Lcom/sec/internal/omanetapi/nms/data/ObjectList;ZLjava/util/List;)V
    .locals 6
    .param p1, "objectList"    # Lcom/sec/internal/omanetapi/nms/data/ObjectList;
    .param p2, "isJson"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/omanetapi/nms/data/ObjectList;",
            "Z",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;)V"
        }
    .end annotation

    .line 39
    .local p3, "payloadsList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/ObjectsOpBulkCreation;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nms/ObjectsOpBulkCreation;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 40
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/ObjectsOpBulkCreation;->mNMSRequestHeaderMap:Ljava/util/Map;

    const-string v1, "Content-Type"

    const-string v2, "multipart/form-data"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/ObjectsOpBulkCreation;->mNMSRequestHeaderMap:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nms/ObjectsOpBulkCreation;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 43
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nms/ObjectsOpBulkCreation;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nms/ObjectsOpBulkCreation;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v0, "requestParts":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    if-eqz p2, :cond_0

    .line 51
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 52
    .local v1, "gson":Lcom/google/gson/Gson;
    new-instance v2, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 55
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "form-data; name=root-fields"

    const-string v5, "application/json"

    invoke-direct {v2, v4, v5, v3}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v1    # "gson":Lcom/google/gson/Gson;
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 60
    .local v2, "payloads":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .end local v2    # "payloads":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    goto :goto_0

    .line 63
    :cond_1
    new-instance v1, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v1, v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/sec/internal/omanetapi/nms/ObjectsOpBulkCreation;->setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 64
    return-void
.end method
