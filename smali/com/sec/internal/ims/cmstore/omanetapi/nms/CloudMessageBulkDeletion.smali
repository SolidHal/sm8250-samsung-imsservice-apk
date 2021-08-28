.class public Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;
.super Lcom/sec/internal/omanetapi/nms/BulkDeletion;
.source "CloudMessageBulkDeletion.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected bulkDeleteRetryCount:I

.field private final transient mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field protected responseCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/omanetapi/nms/data/BulkDelete;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 9
    .param p1, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "bulkdelete"    # Lcom/sec/internal/omanetapi/nms/data/BulkDelete;
    .param p3, "currentLine"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    .param p5, "paramList"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .param p6, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 31
    invoke-interface {p6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getNmsHost()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getOMAApiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getStoreName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p3}, Lcom/sec/internal/omanetapi/nms/BulkDeletion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;->bulkDeleteRetryCount:I

    .line 35
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 36
    move-object v6, p0

    .line 37
    .local v6, "httpInterface":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    invoke-interface {p6, p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 39
    .local v7, "pat":Ljava/lang/String;
    invoke-interface {p6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;->initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;->initDeleteRequest(Lcom/sec/internal/omanetapi/nms/data/BulkDelete;Z)V

    .line 42
    invoke-interface {p6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isPostMethodForBulkDelete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 46
    :cond_0
    new-instance v8, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    invoke-virtual {p0, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 114
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;

    .line 20
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    return-object v0
.end method


# virtual methods
.method public getResponseCode()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;->responseCode:I

    return v0
.end method

.method public getRetryCount()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;->bulkDeleteRetryCount:I

    return v0
.end method

.method public increaseRetryCount()V
    .locals 1

    .line 121
    iget v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;->bulkDeleteRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;->bulkDeleteRetryCount:I

    .line 122
    return-void
.end method
