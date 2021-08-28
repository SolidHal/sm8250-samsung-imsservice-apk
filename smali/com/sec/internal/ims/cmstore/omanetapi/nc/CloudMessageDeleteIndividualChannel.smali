.class public Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;
.super Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;
.source "CloudMessageDeleteIndividualChannel.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field private final transient mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

.field private final transient mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Ljava/lang/String;ZLcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 9
    .param p1, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "callCommonInterface"    # Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .param p3, "channelId"    # Ljava/lang/String;
    .param p4, "isNeedRecreateChannel"    # Z
    .param p5, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 29
    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getNcHost()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getOMAApiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getUserTelCtn()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p3}, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 33
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;->mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 34
    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 35
    move-object v4, p0

    .line 36
    .local v4, "httpInterface":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    move-object v5, p3

    .line 38
    .local v5, "mChannelId":Ljava/lang/String;
    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getUserTelCtn()Ljava/lang/String;

    move-result-object v6

    .line 39
    .local v6, "line":Ljava/lang/String;
    invoke-interface {p5, v6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 40
    .local v7, "pat":Ljava/lang/String;
    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;->initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;->initDeleteRequest()V

    .line 43
    new-instance v8, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel$1;

    move-object v0, v8

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;ZLcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 97
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;

    .line 18
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;)Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;

    .line 18
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    return-object v0
.end method


# virtual methods
.method public getRetryInstance(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 6
    .param p1, "callback"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getOMAChannelResURL()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "resUrl":Ljava/lang/String;
    const/4 v1, 0x0

    .line 103
    .local v1, "channelId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    new-instance v2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;->mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    return-object v2

    .line 108
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method
