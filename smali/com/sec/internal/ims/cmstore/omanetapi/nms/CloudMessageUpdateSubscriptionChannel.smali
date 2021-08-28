.class public Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;
.super Lcom/sec/internal/omanetapi/nms/IndividualSubscription;
.source "CloudMessageUpdateSubscriptionChannel.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x3fb16cedd51dcfaeL


# instance fields
.field private final transient mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 5
    .param p1, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "restartToken"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "callCommonInterface"    # Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .param p5, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 33
    invoke-direct {p0, p3}, Lcom/sec/internal/omanetapi/nms/IndividualSubscription;-><init>(Ljava/lang/String;)V

    .line 34
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;->mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0, p5}, Lcom/sec/internal/ims/cmstore/utils/Util;->replaceUrlPrefix(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;->mBaseUrl:Ljava/lang/String;

    .line 37
    move-object v0, p0

    .line 38
    .local v0, "httpInterface":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/NmsSubscriptionUpdate;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/NmsSubscriptionUpdate;-><init>()V

    .line 40
    .local v1, "subscriptionUpdate":Lcom/sec/internal/omanetapi/nms/data/NmsSubscriptionUpdate;
    const v2, 0x15180

    iput v2, v1, Lcom/sec/internal/omanetapi/nms/data/NmsSubscriptionUpdate;->duration:I

    .line 41
    iput-object p2, v1, Lcom/sec/internal/omanetapi/nms/data/NmsSubscriptionUpdate;->restartToken:Ljava/lang/String;

    .line 43
    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getUserTelCtn()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "line":Ljava/lang/String;
    invoke-interface {p5, v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "pat":Ljava/lang/String;
    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;->initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;->initPostRequest(Lcom/sec/internal/omanetapi/nms/data/NmsSubscriptionUpdate;Z)V

    .line 49
    new-instance v4, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel$1;

    invoke-direct {v4, p0, p1, v0, p5}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 100
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;

    .line 23
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;->mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    return-object v0
.end method
