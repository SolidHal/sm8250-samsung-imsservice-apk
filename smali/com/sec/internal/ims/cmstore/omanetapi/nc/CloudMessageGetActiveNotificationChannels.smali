.class public Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;
.super Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;
.source "CloudMessageGetActiveNotificationChannels.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final transient mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 4
    .param p1, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "callCommonInterface"    # Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .param p3, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 30
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getNcHost()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getOMAApiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getUserTelCtn()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    move-object v0, p0

    .line 33
    .local v0, "httpInterface":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 35
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getUserTelCtn()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "line":Ljava/lang/String;
    invoke-interface {p3, v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "pat":Ljava/lang/String;
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;->initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;->initGetRequest()V

    .line 40
    new-instance v3, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;

    .line 21
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    return-object v0
.end method
