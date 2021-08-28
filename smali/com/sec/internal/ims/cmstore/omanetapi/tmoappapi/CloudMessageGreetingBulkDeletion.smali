.class public Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingBulkDeletion;
.super Lcom/sec/internal/omanetapi/nms/BulkDeletion;
.source "CloudMessageGreetingBulkDeletion.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field private final transient mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingBulkDeletion;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingBulkDeletion;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/omanetapi/nms/data/BulkDelete;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 9
    .param p1, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "bulkdelete"    # Lcom/sec/internal/omanetapi/nms/data/BulkDelete;
    .param p3, "currentLine"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    .param p5, "greetingParam"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .param p6, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 42
    invoke-interface {p6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getNmsHost()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getOMAApiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getStoreName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p3}, Lcom/sec/internal/omanetapi/nms/BulkDeletion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingBulkDeletion;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 46
    iput-object p6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingBulkDeletion;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 47
    move-object v2, p0

    .line 49
    .local v2, "httpInterface":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    invoke-interface {p6, p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 51
    .local v7, "pat":Ljava/lang/String;
    invoke-interface {p6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingBulkDeletion;->initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingBulkDeletion;->initDeleteRequest(Lcom/sec/internal/omanetapi/nms/data/BulkDelete;Z)V

    .line 54
    new-instance v8, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingBulkDeletion$1;

    move-object v0, v8

    move-object v1, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingBulkDeletion$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingBulkDeletion;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {p0, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingBulkDeletion;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 228
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingBulkDeletion;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingBulkDeletion;)Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingBulkDeletion;

    .line 32
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingBulkDeletion;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingBulkDeletion;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingBulkDeletion;

    .line 32
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingBulkDeletion;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    return-object v0
.end method


# virtual methods
.method public getRetryInstance(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 2
    .param p1, "callback"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 232
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingBulkDeletion;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingBulkDeletion;->getBoxId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "pat":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingBulkDeletion;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingBulkDeletion;->initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-object p0
.end method
