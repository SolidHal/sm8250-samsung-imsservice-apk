.class public Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteObjectFlag;
.super Lcom/sec/internal/omanetapi/nms/IndividualFlag;
.source "CloudMessageDeleteObjectFlag.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x7139036afbcc6ca2L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteObjectFlag;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteObjectFlag;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 7
    .param p1, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "objectId"    # Ljava/lang/String;
    .param p3, "flagnames"    # Ljava/lang/String;
    .param p4, "dbparam"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .param p5, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 24
    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getNmsHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getOMAApiVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getStoreName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/omanetapi/nms/IndividualFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    nop

    .line 30
    .local v0, "httpInterface":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    iget-object v1, p4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 31
    .local v1, "line":Ljava/lang/String;
    invoke-interface {p5, v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "pat":Ljava/lang/String;
    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteObjectFlag;->initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteObjectFlag;->initDeleteRequest()V

    .line 35
    new-instance v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteObjectFlag$1;

    invoke-direct {v3, p0, p4, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteObjectFlag$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteObjectFlag;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteObjectFlag;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 68
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteObjectFlag;->TAG:Ljava/lang/String;

    return-object v0
.end method
