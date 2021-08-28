.class public Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;
.super Lcom/sec/internal/omanetapi/nms/IndividualSubscription;
.source "CloudMessageDeleteIndividualSubscription.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 4
    .param p1, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 19
    invoke-direct {p0, p2}, Lcom/sec/internal/omanetapi/nms/IndividualSubscription;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;->mBaseUrl:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/sec/internal/ims/cmstore/utils/Util;->replaceUrlPrefix(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;->mBaseUrl:Ljava/lang/String;

    .line 23
    move-object v0, p0

    .line 25
    .local v0, "httpInterface":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getUserTelCtn()Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "line":Ljava/lang/String;
    invoke-interface {p3, v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, "pat":Ljava/lang/String;
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;->initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;->initCommonDeleteRequest()V

    .line 31
    new-instance v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription$1;

    invoke-direct {v3, p0, p1, p3, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 61
    return-void
.end method
