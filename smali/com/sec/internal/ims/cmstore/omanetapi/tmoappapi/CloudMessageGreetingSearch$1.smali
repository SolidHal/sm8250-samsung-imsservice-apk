.class Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;
.super Ljava/lang/Object;
.source "CloudMessageGreetingSearch.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$currentLine:Ljava/lang/String;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

.field final synthetic val$param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

.field final synthetic val$searchCursor:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    .line 71
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$currentLine:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$searchCursor:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 8
    .param p1, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 75
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "strbody":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x12e

    const-string v4, ""

    if-ne v1, v3, :cond_2

    .line 79
    invoke-static {}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v5, "302 redirect"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v5, "Location"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 83
    .local v1, "locationInHead":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 84
    .local v5, "location":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 85
    invoke-static {}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 89
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 92
    .local v2, "url":Ljava/net/URL;
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->saveNcHost(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v2    # "url":Ljava/net/URL;
    goto :goto_0

    .line 93
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Ljava/net/MalformedURLException;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 98
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 99
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-interface {v2, v4, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    .line 101
    return-void

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    .line 104
    return-void

    .line 107
    .end local v1    # "locationInHead":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "location":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v3, 0x191

    if-ne v1, v3, :cond_3

    .line 108
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 110
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    .line 111
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->getBoxId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    .line 113
    .local v1, "builder":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 114
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 115
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREDENTIAL_EXPIRED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 116
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFixedFlowWithMessage(Landroid/os/Message;)V

    .line 117
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {v3, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    .line 118
    return-void

    .line 121
    .end local v1    # "builder":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v3, 0x1ad

    if-eq v1, v3, :cond_4

    .line 122
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v3, 0x1f7

    if-ne v1, v3, :cond_6

    .line 123
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string v3, "Retry-After"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 124
    .local v1, "retryAfterHeader":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 125
    .local v3, "retryAfter":Ljava/lang/String;
    const/4 v5, 0x0

    .line 126
    .local v5, "retryAfterValue":I
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 127
    invoke-static {}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 129
    .end local v3    # "retryAfter":Ljava/lang/String;
    .local v2, "retryAfter":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "retryAfter is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "seconds"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v5, v3

    .line 132
    if-lez v5, :cond_5

    .line 133
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    const-string/jumbo v6, "retry_header"

    invoke-interface {v3, v4, v6, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    goto :goto_1

    .line 137
    :cond_5
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {v3, v4, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    :goto_1
    return-void

    .line 140
    :catch_1
    move-exception v3

    .line 141
    .local v3, "ex":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {v4, v6, v7}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    .line 143
    return-void

    .line 148
    .end local v1    # "retryAfterHeader":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "retryAfter":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v5    # "retryAfterValue":I
    :cond_6
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0xcc

    if-ne v1, v2, :cond_7

    .line 149
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 150
    .local v1, "msg":Landroid/os/Message;
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v3, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 152
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DELETE_GREETING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 155
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$currentLine:Ljava/lang/String;

    .line 156
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 157
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v2

    .line 158
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setCursor(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 159
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v2

    .line 160
    .local v2, "builder":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 161
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DELETE_GREETING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    iput v3, v1, Landroid/os/Message;->what:I

    .line 162
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFixedFlowWithMessage(Landroid/os/Message;)V

    .line 163
    return-void

    .line 166
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "builder":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    :cond_7
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_8

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0xce

    if-eq v1, v2, :cond_8

    .line 168
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    .line 169
    return-void

    .line 172
    :cond_8
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 173
    .local v1, "gson":Lcom/google/gson/Gson;
    const/4 v2, 0x0

    .line 175
    .local v2, "response":Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;
    :try_start_2
    const-class v3, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 181
    nop

    .line 183
    if-nez v2, :cond_9

    return-void

    .line 184
    :cond_9
    iget-object v3, v2, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->objectList:Lcom/sec/internal/omanetapi/nms/data/ObjectList;

    .line 186
    .local v3, "objectList":Lcom/sec/internal/omanetapi/nms/data/ObjectList;
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 187
    .local v5, "msg":Landroid/os/Message;
    if-eqz v3, :cond_b

    .line 188
    iget-object v4, v3, Lcom/sec/internal/omanetapi/nms/data/ObjectList;->cursor:Ljava/lang/String;

    .line 189
    .local v4, "cursor":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$searchCursor:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 190
    new-instance v6, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v6}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v7, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_SYNC_PARTIAL_SYNC_SUMMARY:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 192
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v6

    .line 195
    invoke-virtual {v6, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setObjectList(Lcom/sec/internal/omanetapi/nms/data/ObjectList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_CONTINUE_SEARCH:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$currentLine:Ljava/lang/String;

    .line 197
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 198
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v6

    .line 199
    invoke-virtual {v6, v4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setCursor(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 200
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v6

    .line 201
    .local v6, "builder":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    invoke-virtual {v6}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v7

    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 202
    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_CONTINUE_SEARCH:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v7

    iput v7, v5, Landroid/os/Message;->what:I

    .line 203
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFixedFlowWithMessage(Landroid/os/Message;)V

    .line 204
    .end local v6    # "builder":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    goto :goto_2

    .line 205
    :cond_a
    new-instance v6, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v6}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v7, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 207
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DELETE_GREETING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 210
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v6

    .line 211
    invoke-virtual {v6, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setObjectList(Lcom/sec/internal/omanetapi/nms/data/ObjectList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$currentLine:Ljava/lang/String;

    .line 212
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 213
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v6

    .line 214
    invoke-virtual {v6, v4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setCursor(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 215
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v6

    .line 216
    .restart local v6    # "builder":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    invoke-virtual {v6}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v7

    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 217
    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DELETE_GREETING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v7

    iput v7, v5, Landroid/os/Message;->what:I

    .line 218
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFixedFlowWithMessage(Landroid/os/Message;)V

    .line 220
    .end local v4    # "cursor":Ljava/lang/String;
    .end local v6    # "builder":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    :goto_2
    goto :goto_3

    .line 221
    :cond_b
    new-instance v6, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v6}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v7, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 223
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v6

    .line 226
    invoke-virtual {v6, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setObjectList(Lcom/sec/internal/omanetapi/nms/data/ObjectList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 227
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v6

    .line 228
    invoke-virtual {v6, v4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setCursor(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$currentLine:Ljava/lang/String;

    .line 229
    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 230
    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v4

    .line 231
    .local v4, "builder":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v6

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 232
    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DELETE_GREETING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v6

    iput v6, v5, Landroid/os/Message;->what:I

    .line 233
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFixedFlowWithMessage(Landroid/os/Message;)V

    .line 235
    .end local v4    # "builder":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    :goto_3
    return-void

    .line 176
    .end local v3    # "objectList":Lcom/sec/internal/omanetapi/nms/data/ObjectList;
    .end local v5    # "msg":Landroid/os/Message;
    :catch_2
    move-exception v3

    .line 178
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3
    .param p1, "arg1"    # Ljava/io/IOException;

    .line 239
    invoke-static {}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->access$000()Ljava/lang/String;

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

    .line 240
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;->val$param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    .line 241
    return-void
.end method
