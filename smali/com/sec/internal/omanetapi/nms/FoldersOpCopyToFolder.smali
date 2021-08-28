.class public Lcom/sec/internal/omanetapi/nms/FoldersOpCopyToFolder;
.super Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;
.source "FoldersOpCopyToFolder.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/sec/internal/omanetapi/nms/FoldersOpCopyToFolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/omanetapi/nms/FoldersOpCopyToFolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "serverRoot"    # Ljava/lang/String;
    .param p2, "apiVersion"    # Ljava/lang/String;
    .param p3, "storeName"    # Ljava/lang/String;
    .param p4, "boxId"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/sec/internal/omanetapi/nms/FoldersOpCopyToFolder;->buildAPISpecificURLFromBase()V

    .line 29
    return-void
.end method


# virtual methods
.method protected buildAPISpecificURLFromBase()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/FoldersOpCopyToFolder;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 56
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "folders"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 57
    const-string/jumbo v1, "operations"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 58
    const-string v1, "copyToFolder"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 59
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/omanetapi/nms/FoldersOpCopyToFolder;->mBaseUrl:Ljava/lang/String;

    .line 60
    sget-object v1, Lcom/sec/internal/omanetapi/nms/FoldersOpCopyToFolder;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/omanetapi/nms/FoldersOpCopyToFolder;->mBaseUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public initPostRequest(Lcom/sec/internal/omanetapi/nms/data/TargetSourceRef;Z)V
    .locals 4
    .param p1, "targetSourceRef"    # Lcom/sec/internal/omanetapi/nms/data/TargetSourceRef;
    .param p2, "isJson"    # Z

    .line 34
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/FoldersOpCopyToFolder;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nms/FoldersOpCopyToFolder;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 35
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nms/FoldersOpCopyToFolder;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nms/FoldersOpCopyToFolder;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    if-eqz p2, :cond_0

    .line 40
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/FoldersOpCopyToFolder;->mNMSRequestHeaderMap:Ljava/util/Map;

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/FoldersOpCopyToFolder;->mNMSRequestHeaderMap:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/sec/internal/omanetapi/nms/FoldersOpCopyToFolder;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 43
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 44
    .local v1, "gson":Lcom/google/gson/Gson;
    new-instance v2, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 48
    .end local v1    # "gson":Lcom/google/gson/Gson;
    :cond_0
    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nms/FoldersOpCopyToFolder;->setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 51
    :cond_1
    return-void
.end method
