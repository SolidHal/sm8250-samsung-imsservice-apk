.class public Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;
.super Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;
.source "CloudMessageUpdateNotificationChannelLifeTime.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x7139036afbcc6ca2L


# instance fields
.field private final transient mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field private final transient mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 7
    .param p1, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "callCommonInterface"    # Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .param p3, "channelId"    # Ljava/lang/String;
    .param p4, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 32
    invoke-interface {p4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getNcHost()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getOMAApiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getUserTelCtn()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p3}, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 36
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v1, "channelLifetime"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 37
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;->mBaseUrl:Ljava/lang/String;

    .line 38
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;->mBaseUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    move-object v1, p0

    .line 41
    .local v1, "httpInterface":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 42
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;->mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 43
    new-instance v2, Lcom/sec/internal/omanetapi/nc/data/NotificationChannelLifetime;

    invoke-direct {v2}, Lcom/sec/internal/omanetapi/nc/data/NotificationChannelLifetime;-><init>()V

    .line 44
    .local v2, "notificationChannelLifetime":Lcom/sec/internal/omanetapi/nc/data/NotificationChannelLifetime;
    const-wide/32 v3, 0x15180

    iput-wide v3, v2, Lcom/sec/internal/omanetapi/nc/data/NotificationChannelLifetime;->channelLifetime:J

    .line 46
    invoke-interface {p4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getUserTelCtn()Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "line":Ljava/lang/String;
    invoke-interface {p4, v3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, "pat":Ljava/lang/String;
    invoke-interface {p4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;->initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;->mNCRequestHeaderMap:Ljava/util/Map;

    const-string v6, "Authorization"

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const/4 v5, 0x1

    invoke-virtual {p0, v2, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;->initPutRequest(Lcom/sec/internal/omanetapi/nc/data/NotificationChannelLifetime;Z)V

    .line 53
    new-instance v5, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime$1;

    invoke-direct {v5, p0, v1, p4, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;

    .line 23
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;

    .line 23
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;->mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    return-object v0
.end method
