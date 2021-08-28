.class Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;
.super Ljava/lang/Object;
.source "CloudMessageCreateNotificationChannels.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;ZLcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

.field final synthetic val$isNeedDeleteSubscription:Z


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ZLcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    .line 72
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iput-boolean p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->val$isNeedDeleteSubscription:Z

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 13
    .param p1, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 76
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_9

    .line 77
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 78
    .local v0, "gsonBilder":Lcom/google/gson/GsonBuilder;
    const-class v1, Lcom/sec/internal/omanetapi/nc/data/ChannelData;

    new-instance v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/GsonInterfaceAdapter;

    const-class v3, Lcom/sec/internal/omanetapi/nc/data/LongPollingData;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/data/GsonInterfaceAdapter;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 80
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 81
    .local v1, "gson":Lcom/google/gson/Gson;
    const/4 v2, 0x0

    .line 83
    .local v2, "response":Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetDataString="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 92
    nop

    .line 94
    if-eqz v2, :cond_8

    iget-object v3, v2, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->notificationChannel:Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 99
    :cond_0
    iget-object v3, v2, Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;->notificationChannel:Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;

    .line 101
    .local v3, "channel":Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;
    iget-object v4, v3, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;->resourceURL:Ljava/net/URL;

    if-nez v4, :cond_1

    const-string v4, ""

    goto :goto_0

    :cond_1
    iget-object v4, v3, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;->resourceURL:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "resUrl":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v5

    if-nez v5, :cond_3

    .line 103
    iget-object v5, v3, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;->channelData:Lcom/sec/internal/omanetapi/nc/data/ChannelData;

    check-cast v5, Lcom/sec/internal/omanetapi/nc/data/LongPollingData;

    .line 104
    .local v5, "data":Lcom/sec/internal/omanetapi/nc/data/LongPollingData;
    iget-object v6, v5, Lcom/sec/internal/omanetapi/nc/data/LongPollingData;->channelURL:Ljava/net/URL;

    if-nez v6, :cond_2

    .line 105
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {v6, v7}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 106
    return-void

    .line 108
    :cond_2
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;)Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-result-object v6

    iget-object v7, v5, Lcom/sec/internal/omanetapi/nc/data/LongPollingData;->channelURL:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->saveOMAChannelURL(Ljava/lang/String;)V

    .line 111
    .end local v5    # "data":Lcom/sec/internal/omanetapi/nc/data/LongPollingData;
    :cond_3
    iget v5, v3, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;->channelLifetime:I

    int-to-long v5, v5

    .line 114
    .local v5, "channelLifeTime":J
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 115
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->access$300(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_NOTIFICATIONCHANNEL_LIFETIME:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v8

    const-wide/16 v9, 0x384

    sub-long v9, v5, v9

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    invoke-interface {v7, v8, v9, v10}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateDelay(IJ)Z

    .line 118
    :cond_4
    invoke-static {}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "channelLifeTime="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " callbackURL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;->callbackURL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " isNeedDeleteSubscription: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->val$isNeedDeleteSubscription:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v7, v3, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;->callbackURL:Ljava/lang/String;

    if-eqz v7, :cond_6

    iget-object v7, v3, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;->callbackURL:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    .line 121
    invoke-static {v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;)Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getOMACallBackURL()Ljava/lang/String;

    move-result-object v8

    .line 120
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 122
    iget-boolean v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->val$isNeedDeleteSubscription:Z

    if-eqz v7, :cond_5

    .line 123
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DELETE_SUBCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 124
    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v8

    iget-object v9, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    invoke-static {v9}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;)Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getOMASubscriptionResUrl()Ljava/lang/String;

    move-result-object v9

    .line 123
    invoke-interface {v7, v8, v9}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onGoToEvent(ILjava/lang/Object;)V

    .line 126
    :cond_5
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;)Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-interface {v7, v8, v9}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->saveOMASubscriptionTime(J)V

    .line 127
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;)Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->saveOMASubscriptionChannelDuration(I)V

    .line 132
    :cond_6
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;)Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-result-object v7

    invoke-interface {v7, v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->saveOMAChannelResURL(Ljava/lang/String;)V

    .line 133
    iget-object v7, v3, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;->callbackURL:Ljava/lang/String;

    if-eqz v7, :cond_7

    .line 134
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;)Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-result-object v7

    iget-object v8, v3, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;->callbackURL:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->saveOMACallBackURL(Ljava/lang/String;)V

    .line 136
    :cond_7
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;)Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v7, v8, v9}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->saveOMAChannelCreateTime(J)V

    .line 137
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;)Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-result-object v7

    invoke-interface {v7, v5, v6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->saveOMAChannelLifeTime(J)V

    .line 138
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;)Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->clearOMASubscriptionChannelDuration()V

    .line 139
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;)Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->clearOMASubscriptionTime()V

    .line 140
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->access$300(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREATE_NOTIFICATION_CHANNEL_FINISHED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    goto :goto_2

    .line 95
    .end local v3    # "channel":Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;
    .end local v4    # "resUrl":Ljava/lang/String;
    .end local v5    # "channelLifeTime":J
    :cond_8
    :goto_1
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 96
    return-void

    .line 86
    :catch_0
    move-exception v3

    .line 88
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception occurred "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 91
    return-void

    .line 143
    .end local v0    # "gsonBilder":Lcom/google/gson/GsonBuilder;
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "response":Lcom/sec/internal/omanetapi/common/data/OMAApiResponseParam;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_2
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, -0x80000000

    move-object v8, p1

    invoke-virtual/range {v6 .. v11}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->shouldCareAfterResponsePreProcess(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Object;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 145
    return-void

    .line 148
    :cond_a
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 149
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3
    .param p1, "arg1"    # Ljava/io/IOException;

    .line 153
    invoke-static {}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->access$000()Ljava/lang/String;

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

    .line 154
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 155
    return-void
.end method
