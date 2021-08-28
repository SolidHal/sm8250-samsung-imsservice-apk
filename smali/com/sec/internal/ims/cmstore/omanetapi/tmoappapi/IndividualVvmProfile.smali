.class public Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/IndividualVvmProfile;
.super Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;
.source "IndividualVvmProfile.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x5fa7d45cf1aad3a9L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/IndividualVvmProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/IndividualVvmProfile;->TAG:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/IndividualVvmProfile;->buildAPISpecificURLFromBase()V

    .line 29
    return-void
.end method


# virtual methods
.method protected buildAPISpecificURLFromBase()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/IndividualVvmProfile;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 90
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v1, "vvmserviceProfile"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 91
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/IndividualVvmProfile;->mBaseUrl:Ljava/lang/String;

    .line 92
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/IndividualVvmProfile;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/IndividualVvmProfile;->mBaseUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public initGetRequest()V
    .locals 0

    .line 32
    invoke-super {p0}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->initCommonGetRequest()V

    .line 33
    return-void
.end method

.method public initPostRequest(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;Z)V
    .locals 5
    .param p1, "profile"    # Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;
    .param p2, "isJson"    # Z

    .line 38
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/IndividualVvmProfile;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/IndividualVvmProfile;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 39
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/IndividualVvmProfile;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/IndividualVvmProfile;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 42
    new-instance v0, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$VvmServiceProfileRequest;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$VvmServiceProfileRequest;-><init>()V

    .line 43
    .local v0, "request":Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$VvmServiceProfileRequest;
    iput-object p1, v0, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$VvmServiceProfileRequest;->vvmserviceProfile:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;

    .line 45
    const/4 v1, 0x0

    .line 47
    .local v1, "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    if-eqz p2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/IndividualVvmProfile;->mNMSRequestHeaderMap:Ljava/util/Map;

    const-string v3, "Content-Type"

    const-string v4, "application/json"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/IndividualVvmProfile;->mNMSRequestHeaderMap:Ljava/util/Map;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/IndividualVvmProfile;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 53
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 54
    .local v2, "gson":Lcom/google/gson/Gson;
    new-instance v3, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 55
    .end local v2    # "gson":Lcom/google/gson/Gson;
    goto :goto_0

    .line 57
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/IndividualVvmProfile;->TAG:Ljava/lang/String;

    const-string v3, "XML"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/IndividualVvmProfile;->setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 61
    return-void
.end method

.method public initPutRequest(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;Z)V
    .locals 4
    .param p1, "profile"    # Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;
    .param p2, "isJson"    # Z

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/IndividualVvmProfile;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/IndividualVvmProfile;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 67
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/IndividualVvmProfile;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/IndividualVvmProfile;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/IndividualVvmProfile;->mNMSRequestHeaderMap:Ljava/util/Map;

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/IndividualVvmProfile;->mNMSRequestHeaderMap:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/IndividualVvmProfile;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 73
    if-eqz p2, :cond_0

    .line 74
    new-instance v0, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$VvmServiceProfileRequest;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$VvmServiceProfileRequest;-><init>()V

    .line 76
    .local v0, "serviceProfile":Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$VvmServiceProfileRequest;
    iput-object p1, v0, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$VvmServiceProfileRequest;->vvmserviceProfile:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;

    .line 77
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 78
    .local v1, "gson":Lcom/google/gson/Gson;
    new-instance v2, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;)V

    .line 79
    .local v2, "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/IndividualVvmProfile;->setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 80
    .end local v0    # "serviceProfile":Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$VvmServiceProfileRequest;
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    goto :goto_0

    .line 82
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/IndividualVvmProfile;->TAG:Ljava/lang/String;

    const-string v1, "XML"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    return-void
.end method
