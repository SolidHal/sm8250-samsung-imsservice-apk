.class Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion$1;
.super Ljava/lang/Object;
.source "CloudMessageBulkDeletion.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/omanetapi/nms/data/BulkDelete;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$currentLine:Ljava/lang/String;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

.field final synthetic val$paramList:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

.field final synthetic val$type:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;

    .line 46
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion$1;->val$currentLine:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion$1;->val$type:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion$1;->val$paramList:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 7
    .param p1, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 50
    invoke-static {}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "paramOmaResForBufDbObj":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    const/16 v3, 0xce

    if-ne v1, v3, :cond_0

    .line 53
    invoke-virtual {p1, v2}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setStatusCode(I)V

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v3, 0x190

    if-ne v1, v3, :cond_1

    .line 57
    invoke-virtual {p1, v2}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setStatusCode(I)V

    .line 60
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v3, 0x194

    if-ne v1, v3, :cond_2

    .line 61
    invoke-virtual {p1, v2}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setStatusCode(I)V

    .line 64
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v3, 0x195

    if-ne v1, v3, :cond_3

    .line 65
    invoke-virtual {p1, v2}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setStatusCode(I)V

    .line 68
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v3, 0x1c2

    if-ne v1, v3, :cond_4

    .line 69
    invoke-virtual {p1, v2}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setStatusCode(I)V

    .line 72
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v3

    iput v3, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;->responseCode:I

    .line 73
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    if-eq v1, v2, :cond_6

    .line 74
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v3, 0xcc

    if-ne v1, v3, :cond_5

    goto :goto_0

    .line 91
    :cond_5
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0x193

    if-ne v1, v2, :cond_9

    .line 92
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    const/4 v2, 0x0

    .line 94
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBulkResponseList(Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion$1;->val$paramList:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 95
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    .line 96
    .local v1, "builder":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    goto :goto_1

    .line 75
    .end local v1    # "builder":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    :cond_6
    :goto_0
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v3, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->OBJECT_FLAGS_BULK_UPDATE_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 77
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion$1;->val$currentLine:Ljava/lang/String;

    .line 80
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion$1;->val$type:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    .line 81
    .restart local v1    # "builder":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v3

    if-ne v3, v2, :cond_8

    .line 82
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;->getResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;

    move-result-object v2

    .line 83
    .local v2, "response":Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;
    if-nez v2, :cond_7

    .line 84
    return-void

    .line 87
    :cond_7
    iget-object v3, v2, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->bulkResponseList:Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBulkResponseList(Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    .line 88
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion$1;->val$paramList:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    .line 90
    .end local v2    # "response":Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;
    :cond_8
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    .line 91
    .end local v1    # "builder":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    :cond_9
    nop

    .line 99
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    move-object v3, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;->shouldCareAfterResponsePreProcess(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Object;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 101
    return-void

    .line 104
    :cond_a
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 105
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3
    .param p1, "arg1"    # Ljava/io/IOException;

    .line 109
    invoke-static {}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Http request onFail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 111
    return-void
.end method
