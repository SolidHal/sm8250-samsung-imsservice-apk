.class Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels$1;
.super Ljava/lang/Object;
.source "CloudMessageGetActiveNotificationChannels.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;

    .line 40
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 13
    .param p1, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 44
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    const/16 v2, 0xce

    if-ne v0, v2, :cond_0

    .line 45
    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setStatusCode(I)V

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 48
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 49
    .local v0, "gson":Lcom/google/gson/Gson;
    const/4 v1, 0x0

    .line 51
    .local v1, "response":Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;
    :try_start_0
    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;->TAG:Ljava/lang/String;

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

    .line 52
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 59
    nop

    .line 60
    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->notificationChannelList:[Lcom/sec/internal/omanetapi/nc/data/NotificationChannelList;

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->notificationChannelList:[Lcom/sec/internal/omanetapi/nc/data/NotificationChannelList;

    array-length v2, v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 68
    :cond_1
    iget-object v2, v1, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->notificationChannelList:[Lcom/sec/internal/omanetapi/nc/data/NotificationChannelList;

    .line 70
    .local v2, "notificationChannelList":[Lcom/sec/internal/omanetapi/nc/data/NotificationChannelList;
    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get active channels, notificationChannelList length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v3, 0x0

    .line 73
    .local v3, "i":I
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_4

    aget-object v7, v2, v6

    .line 74
    .local v7, "notificationChannelObject":Lcom/sec/internal/omanetapi/nc/data/NotificationChannelList;
    iget-object v8, v7, Lcom/sec/internal/omanetapi/nc/data/NotificationChannelList;->notificationChannel:Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;

    iget-object v8, v8, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;->resourceURL:Ljava/net/URL;

    .line 75
    .local v8, "resUrl":Ljava/net/URL;
    sget-object v9, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get active channels, resourceURL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 78
    if-nez v8, :cond_2

    goto :goto_1

    .line 79
    :cond_2
    new-instance v9, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;

    invoke-direct {v9}, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;-><init>()V

    .line 80
    .local v9, "channelDeleteData":Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;
    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->channelUrl:Ljava/lang/String;

    .line 81
    iput-boolean v5, v9, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->isNeedRecreateChannel:Z

    .line 82
    array-length v10, v2

    if-ne v3, v10, :cond_3

    .line 83
    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->isNeedRecreateChannel:Z

    .line 85
    :cond_3
    iget-object v10, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;

    invoke-static {v10}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    sget-object v12, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DELETE_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 86
    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v12

    .line 85
    invoke-interface {v10, v11, v12, v9}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V

    .line 73
    .end local v7    # "notificationChannelObject":Lcom/sec/internal/omanetapi/nc/data/NotificationChannelList;
    .end local v8    # "resUrl":Ljava/net/URL;
    .end local v9    # "channelDeleteData":Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 89
    :cond_4
    return-void

    .line 61
    .end local v2    # "notificationChannelList":[Lcom/sec/internal/omanetapi/nc/data/NotificationChannelList;
    .end local v3    # "i":I
    :cond_5
    :goto_2
    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;->TAG:Ljava/lang/String;

    const-string v3, "no active channels, need create channel"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREATE_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 63
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v4

    const/4 v5, 0x0

    .line 62
    invoke-interface {v2, v3, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V

    .line 65
    return-void

    .line 53
    :catch_0
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;->TAG:Ljava/lang/String;

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

    .line 56
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 58
    return-void

    .line 92
    .end local v0    # "gson":Lcom/google/gson/Gson;
    .end local v1    # "response":Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, -0x80000000

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;->shouldCareAfterResponsePreProcess(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Object;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 94
    return-void

    .line 97
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 99
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3
    .param p1, "arg1"    # Ljava/io/IOException;

    .line 103
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;->TAG:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 105
    return-void
.end method
