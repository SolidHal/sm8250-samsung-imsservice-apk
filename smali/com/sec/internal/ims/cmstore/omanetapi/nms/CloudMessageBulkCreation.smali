.class public Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkCreation;
.super Lcom/sec/internal/omanetapi/nms/BulkCreation;
.source "CloudMessageBulkCreation.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x2c51a34e29b2c54bL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkCreation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkCreation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 16
    .param p1, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "uploadparam"    # Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;
    .param p3, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 35
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    invoke-interface/range {p3 .. p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getNmsHost()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {p3 .. p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getOMAApiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getStoreName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v7, Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;->mLine:Ljava/lang/String;

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/sec/internal/omanetapi/nms/BulkCreation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v8, v7, Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;->uploadObjectInfo:Landroid/util/Pair;

    .line 40
    .local v8, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sec/internal/omanetapi/nms/data/ObjectList;Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;>;"
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcom/sec/internal/omanetapi/nms/data/ObjectList;

    .line 41
    .local v9, "object":Lcom/sec/internal/omanetapi/nms/data/ObjectList;
    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Ljava/util/List;

    .line 43
    .local v10, "payloads":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    iget-object v11, v7, Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;->mLine:Ljava/lang/String;

    .line 44
    .local v11, "line":Ljava/lang/String;
    move-object/from16 v12, p3

    invoke-interface {v12, v11}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 45
    .local v13, "pat":Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v13}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkCreation;->initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {v6, v9, v0, v10}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkCreation;->initPostRequest(Lcom/sec/internal/omanetapi/nms/data/ObjectList;ZLjava/util/List;)V

    .line 47
    const-wide/32 v0, 0x493e0

    invoke-virtual {v6, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkCreation;->setWriteTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 49
    move-object/from16 v5, p0

    .line 50
    .local v5, "httpInterface":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    move-object v2, v9

    .line 51
    .local v2, "inputobj":Lcom/sec/internal/omanetapi/nms/data/ObjectList;
    iget-object v14, v7, Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;->bufferDbParamList:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 53
    .local v14, "bufferDbInfo":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    new-instance v15, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkCreation$1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v3, v14

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkCreation$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkCreation;Lcom/sec/internal/omanetapi/nms/data/ObjectList;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    invoke-virtual {v6, v15}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkCreation;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 131
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkCreation;->TAG:Ljava/lang/String;

    return-object v0
.end method
