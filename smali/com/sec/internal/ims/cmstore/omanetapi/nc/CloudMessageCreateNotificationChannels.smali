.class public Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;
.super Lcom/sec/internal/omanetapi/nc/NotificationChannels;
.source "CloudMessageCreateNotificationChannels.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x2dcbb94549cdb780L


# instance fields
.field private final transient mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field private final transient mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

.field private final transient mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;ZLcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 6
    .param p1, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "callCommonInterface"    # Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .param p3, "isNeedDeleteSubscription"    # Z
    .param p4, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 39
    invoke-interface {p4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getNcHost()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getOMAApiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getUserTelCtn()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/omanetapi/nc/NotificationChannels;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    move-object v0, p0

    .line 42
    .local v0, "httpInterface":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 43
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 44
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 46
    new-instance v1, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;-><init>()V

    .line 47
    .local v1, "notificationChannel":Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;
    const-string v2, ""

    iput-object v2, v1, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;->clientCorrelator:Ljava/lang/String;

    .line 48
    iput-object v2, v1, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;->applicationTag:Ljava/lang/String;

    .line 49
    const v2, 0x15180

    iput v2, v1, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;->channelLifetime:I

    .line 51
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v2

    const/4 v3, 0x1

    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 51
    if-eqz v2, :cond_0

    .line 52
    sget-object v2, Lcom/sec/internal/omanetapi/nc/data/ChannelType;->NativeChannel:Lcom/sec/internal/omanetapi/nc/data/ChannelType;

    iput-object v2, v1, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;->channelType:Lcom/sec/internal/omanetapi/nc/data/ChannelType;

    .line 53
    new-instance v2, Lcom/sec/internal/omanetapi/nc/data/GcmChannelData;

    invoke-direct {v2}, Lcom/sec/internal/omanetapi/nc/data/GcmChannelData;-><init>()V

    .line 54
    .local v2, "channelData":Lcom/sec/internal/omanetapi/nc/data/GcmChannelData;
    const-string v5, "GCM"

    iput-object v5, v2, Lcom/sec/internal/omanetapi/nc/data/GcmChannelData;->channelSubType:Ljava/lang/String;

    .line 55
    const-string v5, "1.0"

    iput-object v5, v2, Lcom/sec/internal/omanetapi/nc/data/GcmChannelData;->channelSubTypeVersion:Ljava/lang/String;

    .line 56
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getGcmTokenFromVsim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/sec/internal/omanetapi/nc/data/GcmChannelData;->registrationToken:Ljava/lang/String;

    .line 57
    iput-object v4, v2, Lcom/sec/internal/omanetapi/nc/data/GcmChannelData;->maxNotifications:Ljava/lang/Integer;

    .line 58
    iput-object v2, v1, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;->channelData:Lcom/sec/internal/omanetapi/nc/data/ChannelData;

    .line 59
    .end local v2    # "channelData":Lcom/sec/internal/omanetapi/nc/data/GcmChannelData;
    goto :goto_0

    .line 60
    :cond_0
    sget-object v2, Lcom/sec/internal/omanetapi/nc/data/ChannelType;->LongPolling:Lcom/sec/internal/omanetapi/nc/data/ChannelType;

    iput-object v2, v1, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;->channelType:Lcom/sec/internal/omanetapi/nc/data/ChannelType;

    .line 61
    new-instance v2, Lcom/sec/internal/omanetapi/nc/data/LongPollingData;

    invoke-direct {v2}, Lcom/sec/internal/omanetapi/nc/data/LongPollingData;-><init>()V

    .line 62
    .local v2, "channelData":Lcom/sec/internal/omanetapi/nc/data/LongPollingData;
    iput-object v4, v2, Lcom/sec/internal/omanetapi/nc/data/LongPollingData;->maxNotifications:Ljava/lang/Integer;

    .line 63
    iput-object v2, v1, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;->channelData:Lcom/sec/internal/omanetapi/nc/data/ChannelData;

    .line 66
    .end local v2    # "channelData":Lcom/sec/internal/omanetapi/nc/data/LongPollingData;
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getUserTelCtn()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "line":Ljava/lang/String;
    invoke-interface {p4, v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "pat":Ljava/lang/String;
    invoke-interface {p4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->initPostRequest(Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;Z)V

    .line 72
    new-instance v3, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;

    invoke-direct {v3, p0, v0, p3, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ZLcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 158
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    .line 28
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;)Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    .line 28
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    .line 28
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    return-object v0
.end method


# virtual methods
.method public getRetryInstance(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 5
    .param p1, "callback"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 162
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;ZLcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    return-object v0
.end method
