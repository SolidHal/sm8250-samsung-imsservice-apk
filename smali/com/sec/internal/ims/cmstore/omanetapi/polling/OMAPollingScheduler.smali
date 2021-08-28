.class public Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;
.super Landroid/os/Handler;
.source "OMAPollingScheduler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final NO_RETRY_AFTER_VALUE:I

.field private mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

.field private mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

.field private mIsCreateSubscriptionRunning:Z

.field private mIsOnePollingRunning:Z

.field private mIsPollingNonStopRunning:Z

.field private mIsPollingStarted:Z

.field private mIsSchedulerRunning:Z

.field private final mLine:Ljava/lang/String;

.field private mOnApiSucceedOnceListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mReSyncParam:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

.field private mSchedulerHelper:Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

.field private final mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "APIEventListener"    # Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;
    .param p3, "uicallback"    # Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;
    .param p4, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 63
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mLine:Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getInstance()Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mReSyncParam:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->NO_RETRY_AFTER_VALUE:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mSchedulerHelper:Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    .line 52
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsPollingStarted:Z

    .line 55
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsSchedulerRunning:Z

    .line 56
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsOnePollingRunning:Z

    .line 57
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsPollingNonStopRunning:Z

    .line 58
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsCreateSubscriptionRunning:Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mOnApiSucceedOnceListenerList:Ljava/util/ArrayList;

    .line 64
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    .line 65
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    .line 66
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 67
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->update()V

    .line 68
    return-void
.end method

.method private apiShouldMoveOn()Z
    .locals 4

    .line 335
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getLastFailedApi()Ljava/lang/Class;

    move-result-object v0

    .line 336
    .local v0, "lastFailedApi":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;>;"
    if-eqz v0, :cond_0

    .line 337
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apiShouldMoveOn lastFailedApi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-class v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    const/4 v1, 0x1

    return v1

    .line 342
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private checkAndUpdateSubscriptionChannel()V
    .locals 5

    .line 428
    const/4 v0, 0x0

    .line 429
    .local v0, "NOT_EXIST":I
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->update()V

    .line 430
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    .line 431
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASubscriptionTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 432
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREATE_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 433
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mSchedulerHelper:Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;->isSubscriptionChannelGoingExpired()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsPollingNonStopRunning:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 436
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SEND_LONG_POLLING_REQUEST:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 434
    :cond_2
    :goto_0
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->sendEmptyMessage(I)Z

    .line 438
    :goto_1
    return-void
.end method

.method private gotoHandlerEvent(ILjava/lang/Object;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "param"    # Ljava/lang/Object;

    .line 267
    if-eqz p2, :cond_0

    .line 268
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->sendEmptyMessage(I)Z

    .line 272
    :goto_0
    return-void
.end method

.method private gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 4
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 275
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isRetryEnabled()Z

    move-result v0

    .line 276
    .local v0, "isRetryEnabled":Z
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gotoHandlerEventOnFailure isRetryEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    if-eqz v0, :cond_0

    .line 278
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    const/4 v2, -0x1

    invoke-interface {v1, p0, p1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onFallbackToProvision(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V

    .line 280
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsOnePollingRunning:Z

    .line 281
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsSchedulerRunning:Z

    .line 282
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsPollingNonStopRunning:Z

    .line 283
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsCreateSubscriptionRunning:Z

    goto :goto_0

    .line 285
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DOWNLOAD_RETRIVED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->sendEmptyMessage(I)Z

    .line 287
    :goto_0
    return-void
.end method

.method private declared-synchronized onApiTreatAsSucceed(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 3
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    monitor-enter p0

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOmaSuccess(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 320
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isRetryEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 321
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getControllerOfLastFailedApi()Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->apiShouldMoveOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mOnApiSucceedOnceListenerList:Ljava/util/ArrayList;

    .line 322
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 323
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnApiSucceedOnceListenerList.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mOnApiSucceedOnceListenerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mOnApiSucceedOnceListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

    .line 325
    .local v1, "onApiSucceedOnceListener":Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;
    if-eqz v1, :cond_1

    .line 326
    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;->onMoveOn()V

    .line 328
    .end local v1    # "onApiSucceedOnceListener":Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;
    :cond_1
    goto :goto_0

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mOnApiSucceedOnceListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :cond_3
    monitor-exit p0

    return-void

    .line 318
    .end local p1    # "request":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private shouldSendPollRequest()Z
    .locals 1

    .line 441
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsPollingStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsOnePollingRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsSchedulerRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mSchedulerHelper:Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    if-nez v0, :cond_0

    .line 73
    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;->getInstance(Landroid/os/Handler;)Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mSchedulerHelper:Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    .line 75
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    .line 78
    .local v0, "event":Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->logWorkingStatus()V

    .line 80
    if-nez v0, :cond_1

    .line 81
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 84
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 258
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->pause()V

    .line 259
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mSchedulerHelper:Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/SchedulerHelper;->deleteNotificationSubscriptionResource()V

    .line 260
    goto/16 :goto_1

    .line 249
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_8

    .line 250
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;

    .line 251
    .local v1, "paramsWrapper":Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;->mApi:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->onApiTreatAsSucceed(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 252
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_SUBSCRIPTION_AND_START_LONG_POLLING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 253
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    iget-object v3, v1, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;->mBufDbParams:Ljava/lang/Object;

    .line 252
    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->gotoHandlerEvent(ILjava/lang/Object;)V

    .line 255
    .end local v1    # "paramsWrapper":Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;
    goto/16 :goto_1

    .line 243
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_8

    .line 244
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 245
    .local v1, "api":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->onApiTreatAsSucceed(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 246
    .end local v1    # "api":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    goto/16 :goto_1

    .line 240
    :pswitch_3
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsCreateSubscriptionRunning:Z

    .line 241
    goto/16 :goto_1

    .line 237
    :pswitch_4
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsOnePollingRunning:Z

    .line 238
    goto/16 :goto_1

    .line 233
    :pswitch_5
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    const-string/jumbo v3, "pop_up"

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyUIScreen(ILjava/lang/String;I)V

    .line 235
    goto/16 :goto_1

    .line 230
    :pswitch_6
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onPauseCMNNetApiWithResumeDelay(I)V

    .line 231
    goto/16 :goto_1

    .line 217
    :pswitch_7
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsOnePollingRunning:Z

    .line 218
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsSchedulerRunning:Z

    .line 219
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsPollingNonStopRunning:Z

    .line 220
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsCreateSubscriptionRunning:Z

    .line 221
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mLine:Ljava/lang/String;

    .line 222
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v1

    .line 223
    .local v1, "paramCredExpired":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    const-wide/16 v2, 0x0

    .line 224
    .local v2, "delay":J
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_2

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Number;

    if-eqz v4, :cond_2

    .line 225
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 227
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {v4, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOmaAuthenticationFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;J)V

    .line 228
    goto/16 :goto_1

    .line 207
    .end local v1    # "paramCredExpired":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .end local v2    # "delay":J
    :pswitch_8
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSTORE_REDIRECT mIsSchedulerRunning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsSchedulerRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsSchedulerRunning:Z

    if-eqz v1, :cond_8

    .line 209
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_8

    .line 210
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 211
    .local v1, "api":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReExecute API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " after 302 by using new url"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 213
    .end local v1    # "api":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    goto/16 :goto_1

    .line 202
    :pswitch_9
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 203
    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onCloudObjectNotificationUpdated(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 204
    goto/16 :goto_1

    .line 197
    :pswitch_a
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    new-instance v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v3, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->MAILBOX_RESET:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 198
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v2

    .line 199
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v2

    .line 197
    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onCloudSyncStopped(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 200
    goto/16 :goto_1

    .line 189
    :pswitch_b
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->update()V

    .line 190
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mReSyncParam:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getChannelResURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 191
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v1

    new-instance v8, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mReSyncParam:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    .line 192
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getRestartToken()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mReSyncParam:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getChannelResURL()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v2, v8

    move-object v3, p0

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 191
    invoke-virtual {v1, v8}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_1

    .line 170
    :pswitch_c
    const-string v1, ""

    .line 171
    .local v1, "url":Ljava/lang/String;
    const/4 v4, 0x0

    .line 172
    .local v4, "isNeedRecreateChannel":Z
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;

    if-eqz v5, :cond_3

    .line 173
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;

    .line 174
    .local v5, "deleteData":Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;
    iget-object v1, v5, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->channelUrl:Ljava/lang/String;

    .line 175
    iget-boolean v4, v5, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->isNeedRecreateChannel:Z

    .line 176
    .end local v5    # "deleteData":Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;
    move v10, v4

    goto :goto_0

    .line 177
    :cond_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v5

    check-cast v1, Ljava/lang/String;

    move v10, v4

    .line 179
    .end local v4    # "isNeedRecreateChannel":Z
    .local v10, "isNeedRecreateChannel":Z
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 180
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v11

    new-instance v12, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;

    .line 181
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v4, v12

    move-object v5, p0

    move-object v6, p0

    move v8, v10

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Ljava/lang/String;ZLcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 180
    invoke-virtual {v11, v12}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 183
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelResURL(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMACallBackURL(Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelURL(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 165
    .end local v1    # "url":Ljava/lang/String;
    .end local v10    # "isNeedRecreateChannel":Z
    :pswitch_d
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v1

    new-instance v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {v1, v3}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 167
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMASubscriptionResUrl(Ljava/lang/String;)V

    .line 168
    goto/16 :goto_1

    .line 148
    :pswitch_e
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SEND_LONG_POLLING_REQUEST mIsSchedulerRunning: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsSchedulerRunning:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsSchedulerRunning:Z

    if-eqz v1, :cond_4

    .line 150
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsOnePollingRunning:Z

    if-nez v1, :cond_8

    .line 151
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsOnePollingRunning:Z

    .line 152
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsPollingNonStopRunning:Z

    .line 153
    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLongPolling;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mReSyncParam:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getChannelURL()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v1, p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLongPolling;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 155
    .local v1, "polling":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    const-wide/32 v2, 0x57e40

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setReadTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 156
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 157
    .end local v1    # "polling":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    goto/16 :goto_1

    .line 159
    :cond_4
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsOnePollingRunning:Z

    .line 160
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsPollingNonStopRunning:Z

    .line 161
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsCreateSubscriptionRunning:Z

    .line 163
    goto/16 :goto_1

    .line 136
    :pswitch_f
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsCreateSubscriptionRunning:Z

    if-nez v1, :cond_8

    .line 137
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->update()V

    .line 138
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNotifyURL: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mReSyncParam:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getNotifyURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mReSyncParam:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getNotifyURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 140
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsCreateSubscriptionRunning:Z

    .line 141
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v1

    new-instance v9, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mReSyncParam:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    .line 142
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getNotifyURL()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mReSyncParam:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getRestartToken()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v2, v9

    move-object v3, p0

    move-object v6, p0

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;ZLcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 141
    invoke-virtual {v1, v9}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_1

    .line 131
    :pswitch_10
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->shouldSendPollRequest()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 132
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->checkAndUpdateSubscriptionChannel()V

    goto/16 :goto_1

    .line 127
    :pswitch_11
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v2, p0, p0, v3, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;ZLcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 129
    goto/16 :goto_1

    .line 115
    :pswitch_12
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMAChannelResURL()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "resUrl":Ljava/lang/String;
    const/4 v2, 0x0

    .line 117
    .local v2, "channelId":Ljava/lang/String;
    sget-object v4, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resUrl: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 119
    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v3

    new-instance v4, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v4, p0, p0, v2, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_1

    .line 123
    :cond_5
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREATE_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->sendEmptyMessage(I)Z

    .line 125
    goto :goto_1

    .line 111
    .end local v1    # "resUrl":Ljava/lang/String;
    .end local v2    # "channelId":Ljava/lang/String;
    :pswitch_13
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsSchedulerRunning:Z

    .line 112
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsPollingNonStopRunning:Z

    .line 113
    goto :goto_1

    .line 107
    :pswitch_14
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsSchedulerRunning:Z

    .line 108
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsPollingStarted:Z

    .line 109
    goto :goto_1

    .line 95
    :pswitch_15
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsSchedulerRunning:Z

    if-nez v1, :cond_7

    .line 96
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsSchedulerRunning:Z

    .line 97
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->shouldSendPollRequest()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 98
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 100
    :cond_6
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsPollingNonStopRunning:Z

    goto :goto_1

    .line 103
    :cond_7
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->TAG:Ljava/lang/String;

    const-string v2, "already running"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    goto :goto_1

    .line 89
    :pswitch_16
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsPollingStarted:Z

    .line 90
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->shouldSendPollRequest()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 91
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->sendEmptyMessage(I)Z

    .line 264
    :cond_8
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected logWorkingStatus()V
    .locals 3

    .line 445
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mLine:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " logWorkingStatus: [mIsPollingStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsPollingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsSchedulerRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsSchedulerRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsPollingRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mIsOnePollingRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 379
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 380
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 0
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "newParam"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 374
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 375
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "errorCode"    # Ljava/lang/String;

    .line 370
    return-void
.end method

.method public onFailedEvent(ILjava/lang/Object;)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "param"    # Ljava/lang/Object;

    .line 384
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->gotoHandlerEvent(ILjava/lang/Object;)V

    .line 385
    return-void
.end method

.method public onFixedFlow(I)V
    .locals 0
    .param p1, "event"    # I

    .line 403
    return-void
.end method

.method public onFixedFlowWithMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .line 399
    return-void
.end method

.method public onGoToEvent(ILjava/lang/Object;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "param"    # Ljava/lang/Object;

    .line 311
    if-eqz p2, :cond_0

    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->sendEmptyMessage(I)Z

    .line 316
    :goto_0
    return-void
.end method

.method public onMoveOnToNext(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V
    .locals 2
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "param"    # Ljava/lang/Object;

    .line 347
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V

    .line 348
    .local v0, "paramsWrapper":Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->MOVE_ON:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->gotoHandlerEvent(ILjava/lang/Object;)V

    .line 349
    return-void
.end method

.method public onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V
    .locals 1
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "retryAfter"    # I

    .line 389
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isRetryEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {v0, p0, p1, p3}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onFallbackToProvision(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V

    goto :goto_0

    .line 393
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DOWNLOAD_RETRIVED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->sendEmptyMessage(I)Z

    .line 395
    :goto_0
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 2
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 358
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V

    .line 359
    .local v0, "paramsWrapper":Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->MOVE_ON:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->gotoHandlerEvent(ILjava/lang/Object;)V

    .line 360
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 1
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "callFlow"    # Ljava/lang/String;

    .line 353
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->API_SUCCEED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->gotoHandlerEvent(ILjava/lang/Object;)V

    .line 354
    return-void
.end method

.method public onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V
    .locals 1
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "event"    # I
    .param p3, "param"    # Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->API_SUCCEED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->gotoHandlerEvent(ILjava/lang/Object;)V

    .line 365
    invoke-direct {p0, p2, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->gotoHandlerEvent(ILjava/lang/Object;)V

    .line 366
    return-void
.end method

.method public pause()V
    .locals 1

    .line 297
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->PAUSE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->sendEmptyMessage(I)Z

    .line 298
    return-void
.end method

.method public resume()V
    .locals 1

    .line 302
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->RESUME:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->sendEmptyMessage(I)Z

    .line 303
    return-void
.end method

.method public declared-synchronized setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

    monitor-enter p0

    .line 452
    if-nez p1, :cond_0

    .line 453
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->TAG:Ljava/lang/String;

    const-string v1, "listener == null, onOmaApiCredentialFailed, clear mOnApiSucceedOnceListenerList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mOnApiSucceedOnceListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 456
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->mOnApiSucceedOnceListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    :goto_0
    monitor-exit p0

    return-void

    .line 451
    .end local p1    # "listener":Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public start()V
    .locals 1

    .line 290
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->START:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->sendEmptyMessage(I)Z

    .line 294
    return-void
.end method

.method public stop()V
    .locals 1

    .line 306
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->STOP:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->sendEmptyMessage(I)Z

    .line 307
    return-void
.end method

.method public update(I)Z
    .locals 1
    .param p1, "eventType"    # I

    .line 407
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->sendMessage(Landroid/os/Message;)Z

    .line 408
    const/4 v0, 0x1

    return v0
.end method

.method public updateDelay(IJ)Z
    .locals 1
    .param p1, "eventType"    # I
    .param p2, "delay"    # J

    .line 413
    const/4 v0, 0x1

    return v0
.end method

.method public updateDelayRetry(IJ)Z
    .locals 1
    .param p1, "eventType"    # I
    .param p2, "delay"    # J

    .line 419
    const/4 v0, 0x0

    return v0
.end method

.method public updateMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 424
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method
