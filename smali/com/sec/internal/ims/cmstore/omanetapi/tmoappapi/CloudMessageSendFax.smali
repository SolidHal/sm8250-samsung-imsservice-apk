.class public Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageSendFax;
.super Lcom/sec/internal/omanetapi/nms/AllObjects;
.source "CloudMessageSendFax.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x34c468119411b618L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageSendFax;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageSendFax;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 16
    .param p1, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "uploadparam"    # Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;
    .param p3, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 36
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p3 .. p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-interface/range {p3 .. p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getFaxServerRoot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-interface/range {p3 .. p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getFaxApiVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-interface/range {p3 .. p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getFaxServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;->bufferDbParam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-direct {v6, v0}, Lcom/sec/internal/omanetapi/nms/AllObjects;-><init>(Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageSendFax;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageSendFax;->mBaseUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v8, v7, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;->uploadObjectInfo:Landroid/util/Pair;

    .line 45
    .local v8, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sec/internal/omanetapi/nms/data/Object;Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcom/sec/internal/omanetapi/nms/data/Object;

    .line 46
    .local v9, "object":Lcom/sec/internal/omanetapi/nms/data/Object;
    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 48
    .local v10, "payloads":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;->bufferDbParam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget-object v11, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 49
    .local v11, "line":Ljava/lang/String;
    move-object/from16 v12, p3

    invoke-interface {v12, v11}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 50
    .local v13, "sit":Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v13}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageSendFax;->initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {v6, v9, v0, v10}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageSendFax;->initPostRequest(Lcom/sec/internal/omanetapi/nms/data/Object;ZLcom/sec/internal/helper/httpclient/HttpPostBody;)V

    .line 53
    move-object/from16 v3, p0

    .line 54
    .local v3, "httpInterface":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    move-object v5, v9

    .line 55
    .local v5, "inputobj":Lcom/sec/internal/omanetapi/nms/data/Object;
    iget-object v14, v7, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;->bufferDbParam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 57
    .local v14, "bufferDbInfo":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    new-instance v15, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageSendFax$1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v14

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageSendFax$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageSendFax;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/omanetapi/nms/data/Object;)V

    invoke-virtual {v6, v15}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageSendFax;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 148
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageSendFax;->TAG:Ljava/lang/String;

    return-object v0
.end method
