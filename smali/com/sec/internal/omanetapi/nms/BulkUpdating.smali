.class public Lcom/sec/internal/omanetapi/nms/BulkUpdating;
.super Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;
.source "BulkUpdating.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient mBulkupdate:Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/sec/internal/omanetapi/nms/BulkUpdating;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/omanetapi/nms/BulkUpdating;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "serverRoot"    # Ljava/lang/String;
    .param p2, "apiVersion"    # Ljava/lang/String;
    .param p3, "storeName"    # Ljava/lang/String;
    .param p4, "boxId"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/sec/internal/omanetapi/nms/BulkUpdating;->buildAPISpecificURLFromBase()V

    .line 25
    return-void
.end method


# virtual methods
.method protected buildAPISpecificURLFromBase()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BulkUpdating;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 60
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "objects"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 61
    const-string/jumbo v1, "operations"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 62
    const-string v1, "bulkUpdate"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 63
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/omanetapi/nms/BulkUpdating;->mBaseUrl:Ljava/lang/String;

    .line 64
    sget-object v1, Lcom/sec/internal/omanetapi/nms/BulkUpdating;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/omanetapi/nms/BulkUpdating;->mBaseUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public getBulkUpdateParam()Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/BulkUpdating;->mBulkupdate:Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;

    return-object v0
.end method

.method public initBulkUpdateRequest(Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;Z)V
    .locals 5
    .param p1, "bulkupdate"    # Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;
    .param p2, "isJson"    # Z

    .line 29
    new-instance v0, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$BulkUpdateRequest;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$BulkUpdateRequest;-><init>()V

    .line 30
    .local v0, "request":Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$BulkUpdateRequest;
    iput-object p1, v0, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$BulkUpdateRequest;->bulkUpdate:Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;

    .line 31
    iput-object p1, p0, Lcom/sec/internal/omanetapi/nms/BulkUpdating;->mBulkupdate:Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;

    .line 33
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/BulkUpdating;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/internal/omanetapi/nms/BulkUpdating;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 34
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v1}, Lcom/sec/internal/omanetapi/nms/BulkUpdating;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 35
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/internal/omanetapi/nms/BulkUpdating;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 37
    const/4 v1, 0x0

    .line 38
    .local v1, "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    if-eqz p2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/sec/internal/omanetapi/nms/BulkUpdating;->mNMSRequestHeaderMap:Ljava/util/Map;

    const-string v3, "Content-Type"

    const-string v4, "application/json"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v2, p0, Lcom/sec/internal/omanetapi/nms/BulkUpdating;->mNMSRequestHeaderMap:Ljava/util/Map;

    invoke-virtual {p0, v2}, Lcom/sec/internal/omanetapi/nms/BulkUpdating;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 43
    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    .line 44
    .local v2, "gson":Lcom/google/gson/Gson;
    new-instance v3, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 48
    .end local v2    # "gson":Lcom/google/gson/Gson;
    :cond_0
    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {p0, v1}, Lcom/sec/internal/omanetapi/nms/BulkUpdating;->setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 51
    :cond_1
    return-void
.end method
