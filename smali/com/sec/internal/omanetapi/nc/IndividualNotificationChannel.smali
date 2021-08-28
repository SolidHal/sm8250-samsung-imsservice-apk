.class public Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;
.super Lcom/sec/internal/omanetapi/nc/BaseNCRequest;
.source "IndividualNotificationChannel.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x659b47a552e8d881L


# instance fields
.field private final mChannelId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "serverRoot"    # Ljava/lang/String;
    .param p2, "apiVersion"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;->mChannelId:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 39
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "channels"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 40
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;->mBaseUrl:Ljava/lang/String;

    .line 41
    sget-object v1, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;->mBaseUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "serverRoot"    # Ljava/lang/String;
    .param p2, "apiVersion"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "channelId"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iput-object p4, p0, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;->mChannelId:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;->buildAPISpecificURLFromBase()V

    .line 33
    return-void
.end method


# virtual methods
.method protected buildAPISpecificURLFromBase()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 85
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "channels"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;->mChannelId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 87
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;->mBaseUrl:Ljava/lang/String;

    .line 89
    sget-object v1, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;->mBaseUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public initDeleteRequest()V
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->initCommonDeleteRequest()V

    .line 50
    return-void
.end method

.method public initGetRequest()V
    .locals 0

    .line 45
    invoke-super {p0}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->initCommonGetRequest()V

    .line 46
    return-void
.end method

.method public initPutRequest(Lcom/sec/internal/omanetapi/nc/data/NotificationChannelLifetime;Z)V
    .locals 5
    .param p1, "notiChannelLifetime"    # Lcom/sec/internal/omanetapi/nc/data/NotificationChannelLifetime;
    .param p2, "isJson"    # Z

    .line 53
    invoke-super {p0}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->initCommonPutRequest()V

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "body":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    if-eqz p2, :cond_0

    .line 57
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;->mNCRequestHeaderMap:Ljava/util/Map;

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;->mNCRequestHeaderMap:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 69
    new-instance v1, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$NotificationChannelLifetimeRequest;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$NotificationChannelLifetimeRequest;-><init>()V

    .line 71
    .local v1, "request":Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$NotificationChannelLifetimeRequest;
    iput-object p1, v1, Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$NotificationChannelLifetimeRequest;->notificationChannelLifetime:Lcom/sec/internal/omanetapi/nc/data/NotificationChannelLifetime;

    .line 72
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 73
    .local v2, "gson":Lcom/google/gson/Gson;
    new-instance v3, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 76
    .end local v1    # "request":Lcom/sec/internal/omanetapi/common/data/OMAApiRequestParam$NotificationChannelLifetimeRequest;
    .end local v2    # "gson":Lcom/google/gson/Gson;
    :cond_0
    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p0, v0}, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;->setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 80
    :cond_1
    return-void
.end method
