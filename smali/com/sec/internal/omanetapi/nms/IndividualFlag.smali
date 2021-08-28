.class public Lcom/sec/internal/omanetapi/nms/IndividualFlag;
.super Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;
.source "IndividualFlag.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = -0xe180c36431e19f2L


# instance fields
.field private final mFlagName:Ljava/lang/String;

.field private final mObjectId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/sec/internal/omanetapi/nms/IndividualFlag;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/omanetapi/nms/IndividualFlag;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "serverRoot"    # Ljava/lang/String;
    .param p2, "apiVersion"    # Ljava/lang/String;
    .param p3, "storeName"    # Ljava/lang/String;
    .param p4, "boxId"    # Ljava/lang/String;
    .param p5, "objectId"    # Ljava/lang/String;
    .param p6, "flagName"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iput-object p5, p0, Lcom/sec/internal/omanetapi/nms/IndividualFlag;->mObjectId:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/sec/internal/omanetapi/nms/IndividualFlag;->mFlagName:Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Lcom/sec/internal/omanetapi/nms/IndividualFlag;->buildAPISpecificURLFromBase()V

    .line 34
    return-void
.end method


# virtual methods
.method protected buildAPISpecificURLFromBase()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/IndividualFlag;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 64
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "objects"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 66
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/IndividualFlag;->mObjectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 68
    const-string v1, "flags"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 70
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/IndividualFlag;->mFlagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 72
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/omanetapi/nms/IndividualFlag;->mBaseUrl:Ljava/lang/String;

    .line 73
    sget-object v1, Lcom/sec/internal/omanetapi/nms/IndividualFlag;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/omanetapi/nms/IndividualFlag;->mBaseUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method public initDeleteRequest()V
    .locals 0

    .line 58
    invoke-super {p0}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->initCommonDeleteRequest()V

    .line 59
    return-void
.end method

.method public initPutRequest(Z)V
    .locals 4
    .param p1, "isJson"    # Z

    .line 39
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nms/IndividualFlag;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nms/IndividualFlag;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 40
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nms/IndividualFlag;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nms/IndividualFlag;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 45
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    if-eqz p1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/IndividualFlag;->mNMSRequestHeaderMap:Ljava/util/Map;

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nms/IndividualFlag;->mNMSRequestHeaderMap:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/sec/internal/omanetapi/nms/IndividualFlag;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 54
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nms/IndividualFlag;->setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 55
    return-void
.end method
