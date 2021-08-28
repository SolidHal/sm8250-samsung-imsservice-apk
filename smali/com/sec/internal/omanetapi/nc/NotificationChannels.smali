.class public Lcom/sec/internal/omanetapi/nc/NotificationChannels;
.super Lcom/sec/internal/omanetapi/nc/BaseNCRequest;
.source "NotificationChannels.java"


# static fields
.field private static final serialVersionUID:J = 0x26a584f1b25ae844L


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "serverRoot"    # Ljava/lang/String;
    .param p2, "apiVersion"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-class v0, Lcom/sec/internal/omanetapi/nc/NotificationChannels;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nc/NotificationChannels;->TAG:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/sec/internal/omanetapi/nc/NotificationChannels;->buildAPISpecificURLFromBase()V

    .line 33
    return-void
.end method


# virtual methods
.method protected buildAPISpecificURLFromBase()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nc/NotificationChannels;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 66
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "channels"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 68
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/omanetapi/nc/NotificationChannels;->mBaseUrl:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nc/NotificationChannels;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/omanetapi/nc/NotificationChannels;->mBaseUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method public initPostRequest(Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;Z)V
    .locals 6
    .param p1, "notificationChannel"    # Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;
    .param p2, "isJson"    # Z

    .line 36
    new-instance v0, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$NotificationChannels;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$NotificationChannels;-><init>()V

    .line 39
    .local v0, "request":Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$NotificationChannels;
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nc/NotificationChannels;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/internal/omanetapi/nc/NotificationChannels;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 40
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v1}, Lcom/sec/internal/omanetapi/nc/NotificationChannels;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 41
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/internal/omanetapi/nc/NotificationChannels;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 43
    const/4 v1, 0x0

    .line 44
    .local v1, "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    if-eqz p2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/sec/internal/omanetapi/nc/NotificationChannels;->mNCRequestHeaderMap:Ljava/util/Map;

    const-string v3, "Content-Type"

    const-string v4, "application/json"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v2, p0, Lcom/sec/internal/omanetapi/nc/NotificationChannels;->mNCRequestHeaderMap:Ljava/util/Map;

    invoke-virtual {p0, v2}, Lcom/sec/internal/omanetapi/nc/NotificationChannels;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 49
    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 50
    .local v2, "gsonBuilder":Lcom/google/gson/GsonBuilder;
    const-class v3, Lcom/sec/internal/omanetapi/nc/data/ChannelData;

    new-instance v4, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/GsonInterfaceAdapter;

    const-class v5, Lcom/sec/internal/omanetapi/nc/data/ChannelData;

    invoke-direct {v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/GsonInterfaceAdapter;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 52
    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    .line 53
    .local v3, "gson":Lcom/google/gson/Gson;
    iput-object p1, v0, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$NotificationChannels;->notificationChannel:Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;

    .line 54
    new-instance v4, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 58
    .end local v2    # "gsonBuilder":Lcom/google/gson/GsonBuilder;
    .end local v3    # "gson":Lcom/google/gson/Gson;
    :cond_0
    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {p0, v1}, Lcom/sec/internal/omanetapi/nc/NotificationChannels;->setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 61
    :cond_1
    return-void
.end method
