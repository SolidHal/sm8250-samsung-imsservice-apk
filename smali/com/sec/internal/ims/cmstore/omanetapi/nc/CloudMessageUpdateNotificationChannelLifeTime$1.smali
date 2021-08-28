.class Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime$1;
.super Ljava/lang/Object;
.source "CloudMessageUpdateNotificationChannelLifeTime.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

.field final synthetic val$iCloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;

    .line 53
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime$1;->val$iCloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 11
    .param p1, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 58
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    const/16 v2, 0xce

    if-ne v0, v2, :cond_0

    .line 59
    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setStatusCode(I)V

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 62
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 63
    .local v0, "gson":Lcom/google/gson/Gson;
    const/4 v1, 0x0

    .line 65
    .local v1, "response":Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;
    :try_start_0
    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "result content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 74
    nop

    .line 75
    if-nez v1, :cond_1

    .line 76
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 77
    return-void

    .line 80
    :cond_1
    iget-object v2, v1, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->notificationChannelLifetime:Lcom/sec/internal/omanetapi/nc/data/NotificationChannelLifetime;

    .line 81
    .local v2, "nChannelLifetime":Lcom/sec/internal/omanetapi/nc/data/NotificationChannelLifetime;
    iget-wide v3, v2, Lcom/sec/internal/omanetapi/nc/data/NotificationChannelLifetime;->channelLifetime:J

    .line 83
    .local v3, "channelLifeTime":J
    sget-object v5, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "channelLifeTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime$1;->val$iCloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->saveOMAChannelCreateTime(J)V

    .line 85
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime$1;->val$iCloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v5, v3, v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->saveOMAChannelLifeTime(J)V

    .line 88
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_NOTIFICATIONCHANNEL_LIFETIME:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v6

    const-wide/16 v7, 0x384

    sub-long v7, v3, v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-interface {v5, v6, v7, v8}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateDelay(IJ)Z

    goto :goto_0

    .line 68
    .end local v2    # "nChannelLifetime":Lcom/sec/internal/omanetapi/nc/data/NotificationChannelLifetime;
    .end local v3    # "channelLifeTime":J
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception occurred "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 73
    return-void

    .line 92
    .end local v0    # "gson":Lcom/google/gson/Gson;
    .end local v1    # "response":Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, -0x80000000

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;->shouldCareAfterResponsePreProcess(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Object;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 94
    return-void

    .line 99
    :cond_3
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3
    .param p1, "arg1"    # Ljava/io/IOException;

    .line 103
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;->TAG:Ljava/lang/String;

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

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 105
    return-void
.end method
