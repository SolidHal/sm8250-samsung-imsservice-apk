.class public Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;
.super Ljava/lang/Object;
.source "SchedulerHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static mHandler:Landroid/os/Handler;

.field private static mReSyncParam:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

.field private static sInstance:Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    const-class v0, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;->TAG:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;->sInstance:Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    .line 17
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getInstance()Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;->mReSyncParam:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    .line 19
    sput-object v0, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sput-object p1, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;->mHandler:Landroid/os/Handler;

    .line 23
    return-void
.end method

.method public static getInstance(Landroid/os/Handler;)Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;

    .line 26
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;->sInstance:Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;->sInstance:Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    .line 29
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;->sInstance:Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    return-object v0
.end method


# virtual methods
.method public deleteNotificationSubscriptionResource()V
    .locals 5

    .line 33
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;->TAG:Ljava/lang/String;

    const-string v1, "deleteNotificationSubscriptionResource"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;->mReSyncParam:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getChannelResURL()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "subscriptionChannelResUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_0

    .line 36
    sget-object v1, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DELETE_SUBCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 37
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    .line 36
    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 38
    .local v1, "subscriptionmsg":Landroid/os/Message;
    sget-object v3, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 39
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionResUrl(Ljava/lang/String;)V

    .line 41
    .end local v1    # "subscriptionmsg":Landroid/os/Message;
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMAChannelResURL()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "omaChannelUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 43
    sget-object v3, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;->mHandler:Landroid/os/Handler;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DELETE_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 44
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v4

    .line 43
    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 45
    .local v3, "notificationmsg":Landroid/os/Message;
    sget-object v4, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 46
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelResURL(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMACallBackURL(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelURL(Ljava/lang/String;)V

    .line 50
    .end local v3    # "notificationmsg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public isSubscriptionChannelGoingExpired()Z
    .locals 11

    .line 53
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASubscriptionTime()J

    move-result-wide v0

    .line 55
    .local v0, "subscriptionTime":J
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASubscriptionChannelDuration()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 57
    .local v2, "channelDuration":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 58
    .local v4, "currentTime":J
    const-wide/32 v6, 0x57e40

    add-long/2addr v6, v4

    add-long v8, v0, v2

    sub-long/2addr v6, v8

    .line 59
    .local v6, "life":J
    sget-object v8, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "subscriptionTime : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", channelDuration : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", currentTime : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", life : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-ltz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    return v8
.end method
