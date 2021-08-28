.class public Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileUpdate;
.super Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/IndividualVvmProfile;
.source "CloudMessageVvmProfileUpdate.java"


# static fields
.field private static final serialVersionUID:J = -0x24b6d24d48685c0cL


# direct methods
.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 9
    .param p1, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "vvmprofile"    # Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;
    .param p3, "dbparam"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .param p4, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 29
    invoke-interface {p4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getNmsHost()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getOMAApiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getStoreName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/IndividualVvmProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 35
    .local v0, "line":Ljava/lang/String;
    invoke-interface {p4, v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "pat":Ljava/lang/String;
    invoke-interface {p4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileUpdate;->initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v2, 0x1

    invoke-virtual {p0, p2, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileUpdate;->initPostRequest(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;Z)V

    .line 39
    move-object v6, p0

    .line 41
    .local v6, "httpInterface":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    new-instance v8, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileUpdate$1;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileUpdate$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileUpdate;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;)V

    invoke-virtual {p0, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileUpdate;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 113
    return-void
.end method
