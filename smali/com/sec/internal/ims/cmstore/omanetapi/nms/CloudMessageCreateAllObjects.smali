.class public Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateAllObjects;
.super Lcom/sec/internal/omanetapi/nms/AllObjects;
.source "CloudMessageCreateAllObjects.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x2c51a34e29b2c54bL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateAllObjects;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateAllObjects;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 16
    .param p1, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "uploadparam"    # Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;
    .param p3, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 28
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    invoke-interface/range {p3 .. p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getNmsHost()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {p3 .. p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getOMAApiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getStoreName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v7, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;->bufferDbParam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget-object v3, v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/sec/internal/omanetapi/nms/AllObjects;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v8, v7, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;->uploadObjectInfo:Landroid/util/Pair;

    .line 33
    .local v8, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sec/internal/omanetapi/nms/data/Object;Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcom/sec/internal/omanetapi/nms/data/Object;

    .line 34
    .local v9, "object":Lcom/sec/internal/omanetapi/nms/data/Object;
    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 36
    .local v10, "payloads":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;->bufferDbParam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget-object v11, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 37
    .local v11, "line":Ljava/lang/String;
    move-object/from16 v12, p3

    invoke-interface {v12, v11}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 38
    .local v13, "pat":Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v13}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateAllObjects;->initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x1

    invoke-virtual {v6, v9, v0, v10}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateAllObjects;->initPostRequest(Lcom/sec/internal/omanetapi/nms/data/Object;ZLcom/sec/internal/helper/httpclient/HttpPostBody;)V

    .line 41
    move-object/from16 v3, p0

    .line 42
    .local v3, "httpInterface":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    move-object v5, v9

    .line 43
    .local v5, "inputobj":Lcom/sec/internal/omanetapi/nms/data/Object;
    iget-object v14, v7, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;->bufferDbParam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 45
    .local v14, "bufferDbInfo":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    new-instance v15, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateAllObjects$1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v14

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateAllObjects$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateAllObjects;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/omanetapi/nms/data/Object;)V

    invoke-virtual {v6, v15}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateAllObjects;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 96
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateAllObjects;->TAG:Ljava/lang/String;

    return-object v0
.end method
