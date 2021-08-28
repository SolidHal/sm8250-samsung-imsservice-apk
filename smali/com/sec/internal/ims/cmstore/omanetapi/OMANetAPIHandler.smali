.class public Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;
.super Landroid/os/Handler;
.source "OMANetAPIHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
.implements Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;
    }
.end annotation


# static fields
.field private static final EVENT_APP_DATA_SYNC:I = 0x6

.field private static final EVENT_DEVICE_DATA_UPDATE:I = 0x5

.field private static final EVENT_INITSYNC_DATA_DOWNLOAD:I = 0x7

.field private static final EVENT_INITSYNC_DATA_UPLOAD:I = 0x8

.field private static final EVENT_NORMALSYNC_DATA_DOWNLOAD:I = 0x9

.field private static final EVENT_PAUSE_CMN_NETAPI:I = 0x3

.field private static final EVENT_PAUSE_CMN_NETAPI_WITH_CONTROLPARAM:I = 0xb

.field private static final EVENT_RESETBOX_START_CMN_NETAPI:I = 0xa

.field private static final EVENT_RESUME_CMN_NETAPI:I = 0x2

.field private static final EVENT_RESUME_CMN_NETAPI_WITH_CONTROLPARAM:I = 0xc

.field private static final EVENT_START_CMN_NETAPI:I = 0x1

.field private static final EVENT_STOP_CMN_NETAPI:I = 0x4

.field private static final EVENT_STOP_INITSYNC_AS_COMPLETE:I = 0xd

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

.field private final mContext:Landroid/content/Context;

.field private final mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

.field private final mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

.field private mIsFallbackProvisionInProcess:Z

.field private mIsRunning:Z

.field private final mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

.field private mLowStorageReceiver:Landroid/content/BroadcastReceiver;

.field private final mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

.field private final mUpdateFromCloudRegistrants:Lcom/sec/internal/helper/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/ims/cmstore/LineManager;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 8
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "controller"    # Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;
    .param p4, "uicallback"    # Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;
    .param p5, "linemanager"    # Lcom/sec/internal/ims/cmstore/LineManager;
    .param p6, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 78
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 51
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mUpdateFromCloudRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    .line 79
    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

    .line 80
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    invoke-direct {v0, p1, p0, p4, p6}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;

    invoke-direct {v0, p1, p0, p4, p6}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 85
    :goto_0
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/ims/cmstore/LineManager;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 86
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    .line 87
    iput-object p6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 88
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mContext:Landroid/content/Context;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;)Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    .line 43
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;
    .param p1, "x1"    # Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;

    .line 43
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeHandlers(Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V

    return-void
.end method

.method private isHandleAppendToWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)Z
    .locals 1
    .param p1, "handler"    # Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    .param p2, "operation"    # Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;
    .param p3, "bulckChangeList"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 584
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isBulkCreationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    .line 585
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    .line 586
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 584
    :goto_0
    return v0
.end method

.method private notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 2
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 663
    if-nez p1, :cond_0

    .line 664
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v1, "notifyBufferDB ParamOMAresponseforBufDB is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_0
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 667
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mUpdateFromCloudRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 669
    return-void
.end method

.method private notifyOperationsComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V
    .locals 3
    .param p1, "handler"    # Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    .param p2, "operation"    # Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;
    .param p3, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .param p4, "curType"    # Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 601
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOperationsComplete operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->MESSAGE_DOWNLOAD_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 605
    invoke-virtual {v0, p4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    .line 603
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->onMessageDownloadCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto :goto_0

    .line 606
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    iget-object v1, p3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 608
    invoke-virtual {v0, p4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_SYNC_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 609
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 610
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    .line 607
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->onInitSyncCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 611
    if-eqz p1, :cond_1

    .line 612
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->setInitSyncComplete()V

    .line 615
    :cond_1
    :goto_0
    return-void
.end method

.method private pauseAllSyncHandler()V
    .locals 5

    .line 336
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllSyncHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 337
    .local v0, "synchandlers":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 338
    .local v2, "temp":Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->pause()V

    .line 339
    .end local v2    # "temp":Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    goto :goto_0

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 342
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDataChangeHandlerInstances()Ljava/util/List;

    move-result-object v1

    .line 343
    .local v1, "cloudhandlers":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 344
    .local v3, "temp":Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;
    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->pause()V

    .line 345
    .end local v3    # "temp":Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;
    goto :goto_1

    .line 347
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 348
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDeviceDataUpdateHandlerInstances()Ljava/util/List;

    move-result-object v2

    .line 349
    .local v2, "devicehandlers":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 350
    .local v4, "temp":Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;
    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->pause()V

    .line 351
    .end local v4    # "temp":Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;
    goto :goto_2

    .line 352
    :cond_2
    return-void
.end method

.method private registerLowStorageReceiver()V
    .locals 3

    .line 897
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerLowStorageReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mLowStorageReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 899
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 901
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$3;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$3;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mLowStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 907
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 909
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private resumeAllSyncHandler()V
    .locals 5

    .line 295
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllSyncHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 296
    .local v0, "synchandlers":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 297
    .local v2, "temp":Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->resume()V

    .line 298
    .end local v2    # "temp":Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    goto :goto_0

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 301
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDataChangeHandlerInstances()Ljava/util/List;

    move-result-object v1

    .line 302
    .local v1, "cloudhandlers":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 303
    .local v3, "temp":Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;
    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->resume()V

    .line 304
    .end local v3    # "temp":Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;
    goto :goto_1

    .line 306
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 307
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDeviceDataUpdateHandlerInstances()Ljava/util/List;

    move-result-object v2

    .line 308
    .local v2, "devicehandlers":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 309
    .local v4, "temp":Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;
    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->resume()V

    .line 310
    .end local v4    # "temp":Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;
    goto :goto_2

    .line 311
    :cond_2
    return-void
.end method

.method private resumeAllSyncHandlerByLine(Ljava/lang/String;)V
    .locals 5
    .param p1, "line"    # Ljava/lang/String;

    .line 256
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllSyncHandlerInstancesByLine(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 258
    .local v0, "synchandlers":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 259
    .local v2, "temp":Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->resume()V

    .line 260
    .end local v2    # "temp":Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    goto :goto_0

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 263
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDataChangeHandlerInstancesByLine(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 264
    .local v1, "cloudhandlers":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 265
    .local v3, "temp":Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;
    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->resume()V

    .line 266
    .end local v3    # "temp":Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;
    goto :goto_1

    .line 268
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 269
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDeviceDataUpdateHandlerInstancesByLine(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 270
    .local v2, "devicehandlers":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 271
    .local v4, "temp":Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;
    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->resume()V

    .line 272
    .end local v4    # "temp":Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;
    goto :goto_2

    .line 273
    :cond_2
    return-void
.end method

.method private resumeControllerOfLastFailedApi(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V
    .locals 1
    .param p1, "controller"    # Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .param p2, "paramResume"    # Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;

    .line 226
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$2;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$2;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V

    .line 233
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->resume()V

    .line 234
    return-void
.end method

.method private resumeHandlers(Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V
    .locals 3
    .param p1, "paramResume"    # Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;

    .line 237
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeHandlers mIsMsgAppForeground: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsMsgAppForeground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isPollingAllowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 238
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isPollingAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsNetworkValid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsNetworkValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isPollingAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsMsgAppForeground:Z

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->resume()V

    .line 243
    :cond_0
    iget-boolean v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsNetworkValid:Z

    if-eqz v0, :cond_1

    .line 244
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeAllSyncHandler()V

    .line 246
    :cond_1
    return-void
.end method

.method private resumeSingleHandler(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 590
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeSingleHandler , isRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 592
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->shouldStopSendingAPIwhenNetworklost()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    if-eqz v0, :cond_1

    .line 593
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 594
    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->TRANSIT_TO_RESUME:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 595
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 597
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private sendDeviceUpdateToHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 11
    .param p1, "list"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 355
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDeviceUpdateToHandlers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, "handler":Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 359
    .local v1, "msglist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    new-instance v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v2}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 360
    .local v2, "vvmlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    new-instance v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v3}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 361
    .local v3, "faxlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    new-instance v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v4}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 362
    .local v4, "callloglist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 363
    .local v6, "param":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    iget-object v7, v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 364
    .local v7, "line":Ljava/lang/String;
    iget v8, v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    const/16 v9, 0xd

    if-eq v8, v9, :cond_1

    const/16 v9, 0x15

    if-eq v8, v9, :cond_0

    const/4 v9, 0x3

    if-eq v8, v9, :cond_1

    const/4 v9, 0x4

    if-eq v8, v9, :cond_1

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    .line 373
    :pswitch_0
    iget-object v8, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    goto :goto_1

    .line 379
    :pswitch_1
    iget-object v8, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    goto :goto_1

    .line 376
    :cond_0
    iget-object v8, v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    goto :goto_1

    .line 369
    :cond_1
    iget-object v8, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    nop

    .line 384
    .end local v6    # "param":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .end local v7    # "line":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 385
    :cond_2
    iget-object v5, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-string/jumbo v6, "sendDeviceUpdateToHandlers get handler : "

    const/4 v7, 0x0

    if-lez v5, :cond_3

    .line 386
    iget-object v5, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget-object v5, v5, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 387
    .local v5, "line":Ljava/lang/String;
    sget-object v8, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " type = msg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v9, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v9, v5, v10}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getDeviceDataUpdateHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_3

    .line 391
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 392
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeSingleHandler(Landroid/os/Handler;)V

    .line 395
    .end local v5    # "line":Ljava/lang/String;
    :cond_3
    iget-object v5, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 396
    iget-object v5, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget-object v5, v5, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 397
    .restart local v5    # "line":Ljava/lang/String;
    sget-object v8, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " type = vvm"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v9, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v9, v5, v10}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getDeviceDataUpdateHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_4

    .line 401
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 402
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeSingleHandler(Landroid/os/Handler;)V

    .line 405
    .end local v5    # "line":Ljava/lang/String;
    :cond_4
    iget-object v5, v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 406
    iget-object v5, v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget-object v5, v5, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 407
    .restart local v5    # "line":Ljava/lang/String;
    sget-object v8, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " type = fax"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v9, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->FAX:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v9, v5, v10}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getDeviceDataUpdateHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    move-result-object v0

    .line 410
    if-eqz v0, :cond_5

    .line 411
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 412
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeSingleHandler(Landroid/os/Handler;)V

    .line 415
    .end local v5    # "line":Ljava/lang/String;
    :cond_5
    iget-object v5, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 416
    iget-object v5, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget-object v5, v5, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 417
    .restart local v5    # "line":Ljava/lang/String;
    sget-object v7, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " type = call log"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v7, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->CALLLOG:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v7, v5, v8}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getDeviceDataUpdateHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    move-result-object v0

    .line 420
    if-eqz v0, :cond_6

    .line 421
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 422
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeSingleHandler(Landroid/os/Handler;)V

    .line 425
    .end local v5    # "line":Ljava/lang/String;
    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private sendDownloadToDataChangeHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 7
    .param p1, "list"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 428
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDownloadToDataChangeHandlers : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v0, 0x0

    .line 431
    .local v0, "handler":Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;
    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 432
    .local v2, "param":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    iget-object v3, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 433
    .local v3, "line":Ljava/lang/String;
    iget v4, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/16 v5, 0xd

    if-eq v4, v5, :cond_1

    const/16 v5, 0x15

    if-eq v4, v5, :cond_0

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    packed-switch v4, :pswitch_data_0

    .line 473
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v5, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v5, v3, v6}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getDataChangeHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_2

    .line 476
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    goto :goto_1

    .line 466
    :pswitch_0
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v5, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v5, v3, v6}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getDataChangeHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    move-result-object v0

    .line 468
    if-eqz v0, :cond_2

    .line 469
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    goto :goto_1

    .line 445
    :pswitch_1
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v5, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v5, v3, v6}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getDataChangeHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    move-result-object v0

    .line 447
    if-eqz v0, :cond_2

    .line 448
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    goto :goto_1

    .line 459
    :pswitch_2
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v5, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->CALLLOG:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v5, v3, v6}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getDataChangeHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    move-result-object v0

    .line 461
    if-eqz v0, :cond_2

    .line 462
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    goto :goto_1

    .line 452
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v5, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->FAX:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v5, v3, v6}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getDataChangeHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    move-result-object v0

    .line 454
    if-eqz v0, :cond_2

    .line 455
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    goto :goto_1

    .line 438
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v5, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v5, v3, v6}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getDataChangeHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    move-result-object v0

    .line 440
    if-eqz v0, :cond_2

    .line 441
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    .line 480
    .end local v2    # "param":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .end local v3    # "line":Ljava/lang/String;
    :cond_2
    :goto_1
    goto/16 :goto_0

    .line 481
    :cond_3
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeSingleHandler(Landroid/os/Handler;)V

    .line 482
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendDownloadToHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 1
    .param p1, "list"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 486
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendToHandlerInternal(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    .line 487
    return-void
.end method

.method private sendToHandlerInternal(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V
    .locals 11
    .param p1, "list"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .param p2, "operation"    # Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    .line 490
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendToHandlerInternal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v0, 0x0

    .line 493
    .local v0, "handler":Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 495
    .local v1, "bulckChangeList":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 496
    .local v3, "param":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    iget-object v4, v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 497
    .local v4, "line":Ljava/lang/String;
    const/4 v5, 0x0

    .line 498
    .local v5, "curType":Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    iget v6, v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    if-eqz v6, :cond_9

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    if-eq v6, v7, :cond_5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_5

    const/4 v7, 0x4

    if-eq v6, v7, :cond_5

    const/16 v7, 0xd

    if-eq v6, v7, :cond_5

    const/16 v7, 0x15

    if-eq v6, v7, :cond_3

    packed-switch v6, :pswitch_data_0

    .line 570
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v7, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v7, v4, v8}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object v0

    .line 572
    invoke-virtual {v0, v3, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto/16 :goto_2

    .line 554
    :pswitch_0
    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 555
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v7, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v7, v4, v10}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    .line 556
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object v0

    .line 558
    iget-wide v6, v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 559
    invoke-direct {p0, v0, p2, v3, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyOperationsComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    .line 560
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 562
    :cond_0
    invoke-virtual {v0, v3, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    .line 564
    goto/16 :goto_2

    .line 522
    :pswitch_1
    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 523
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v7, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v7, v4, v10}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object v0

    .line 524
    iget-wide v6, v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 525
    invoke-direct {p0, v0, p2, v3, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyOperationsComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    .line 526
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 528
    :cond_1
    invoke-virtual {v0, v3, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    .line 530
    goto/16 :goto_2

    .line 542
    :pswitch_2
    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->CALLLOG:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 543
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v7, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->CALLLOG:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v7, v4, v10}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    .line 544
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object v0

    .line 546
    iget-wide v6, v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 547
    invoke-direct {p0, v0, p2, v3, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyOperationsComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    .line 548
    const/4 v0, 0x0

    goto :goto_2

    .line 550
    :cond_2
    invoke-virtual {v0, v3, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    .line 552
    goto :goto_2

    .line 532
    :cond_3
    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->FAX:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 533
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v7, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->FAX:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v7, v4, v10}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object v0

    .line 534
    iget-wide v6, v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 535
    invoke-direct {p0, v0, p2, v3, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyOperationsComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    .line 536
    const/4 v0, 0x0

    goto :goto_2

    .line 538
    :cond_4
    invoke-virtual {v0, v3, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    .line 540
    goto :goto_2

    .line 503
    :cond_5
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isEnableFolderIdInSearch()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 504
    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    goto :goto_1

    .line 506
    :cond_6
    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 508
    :goto_1
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v7, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v7, v4, v10}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object v0

    .line 509
    iget-wide v6, v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    .line 510
    invoke-direct {p0, v0, p2, v3, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyOperationsComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    .line 511
    const/4 v0, 0x0

    goto :goto_2

    .line 513
    :cond_7
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isBulkCreationEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    .line 514
    invoke-virtual {v6, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 515
    iget-object v6, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 517
    :cond_8
    invoke-virtual {v0, v3, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    .line 520
    nop

    .line 575
    .end local v3    # "param":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "curType":Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    :goto_2
    goto/16 :goto_0

    .line 566
    .restart local v3    # "param":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "curType":Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    :cond_9
    const/4 v2, 0x0

    .line 567
    .end local v5    # "curType":Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    .local v2, "curType":Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    const/4 v5, 0x0

    invoke-direct {p0, v5, p2, v3, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyOperationsComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    .line 568
    return-void

    .line 576
    .end local v2    # "curType":Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    .end local v3    # "param":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .end local v4    # "line":Ljava/lang/String;
    :cond_a
    invoke-direct {p0, v0, p2, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->isHandleAppendToWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 577
    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->BULK_UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    .line 579
    :cond_b
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeSingleHandler(Landroid/os/Handler;)V

    .line 580
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendUploadToHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 1
    .param p1, "list"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 618
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendToHandlerInternal(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    .line 619
    return-void
.end method

.method private startAllSyncHandler()V
    .locals 5

    .line 276
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllSyncHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 277
    .local v0, "synchandlers":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 278
    .local v2, "temp":Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->start()V

    .line 279
    .end local v2    # "temp":Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    goto :goto_0

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 282
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDataChangeHandlerInstances()Ljava/util/List;

    move-result-object v1

    .line 283
    .local v1, "cloudhandlers":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 284
    .local v3, "temp":Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;
    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->start()V

    .line 285
    .end local v3    # "temp":Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;
    goto :goto_1

    .line 287
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 288
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDeviceDataUpdateHandlerInstances()Ljava/util/List;

    move-result-object v2

    .line 289
    .local v2, "devicehandlers":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 290
    .local v4, "temp":Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;
    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->start()V

    .line 291
    .end local v4    # "temp":Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;
    goto :goto_2

    .line 292
    :cond_2
    return-void
.end method

.method private stopAllSyncHandler()V
    .locals 5

    .line 314
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllSyncHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 315
    .local v0, "synchandlers":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 316
    .local v2, "temp":Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->stop()V

    .line 317
    .end local v2    # "temp":Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    goto :goto_0

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->clearAllSyncHandlerInstances()V

    .line 320
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 321
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDataChangeHandlerInstances()Ljava/util/List;

    move-result-object v1

    .line 322
    .local v1, "cloudhandlers":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 323
    .local v3, "temp":Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;
    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->stop()V

    .line 324
    .end local v3    # "temp":Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;
    goto :goto_1

    .line 325
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->clearAllDataChangeHandlerInstances()V

    .line 327
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 328
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDeviceDataUpdateHandlerInstances()Ljava/util/List;

    move-result-object v2

    .line 329
    .local v2, "devicehandlers":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 330
    .local v4, "temp":Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;
    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->stop()V

    .line 331
    .end local v4    # "temp":Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;
    goto :goto_2

    .line 332
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->clearAllDeviceDataUpdateHandlerInstances()V

    .line 333
    return-void
.end method

.method private stopInitSyncAsComplete()V
    .locals 4

    .line 919
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getUserTelCtn()Ljava/lang/String;

    move-result-object v0

    .line 920
    .local v0, "line":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 921
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_SYNC_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 922
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 923
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v1

    .line 920
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->onInitSyncCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 925
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v2, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v2, v0, v3}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object v1

    .line 926
    .local v1, "handler":Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    if-eqz v1, :cond_0

    .line 927
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->setInitSyncComplete()V

    .line 929
    :cond_0
    return-void
.end method

.method private unregisterLowStorageReceiver()V
    .locals 2

    .line 912
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mLowStorageReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 913
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 914
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mLowStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 916
    :cond_0
    return-void
.end method


# virtual methods
.method public deleteNotificationSubscriptionResource()V
    .locals 2

    .line 826
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isPollingAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DELETE_NOTIFICATION_SUBSCRIPTION_RESOURCE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    .line 829
    :cond_0
    return-void
.end method

.method public handleLargeDataPolling()V
    .locals 4

    .line 889
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getOMAChannelURL()Ljava/lang/String;

    move-result-object v0

    .line 890
    .local v0, "channelUrl":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleLargeDataPolling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SEND_LARGE_DATA_POLLING_REQUEST:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 892
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    .line 891
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 893
    .local v1, "channelURLMsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateMessage(Landroid/os/Message;)Z

    .line 894
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 93
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 95
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->logWorkingStatus()V

    .line 97
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 217
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->stopInitSyncAsComplete()V

    .line 218
    goto/16 :goto_1

    .line 156
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;

    .line 157
    .local v0, "paramResume":Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    .line 158
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    .line 159
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getControllerOfLastFailedApi()Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object v1

    .line 160
    .local v1, "controller":Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    if-eqz v1, :cond_2

    .line 161
    instance-of v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;

    if-nez v2, :cond_1

    instance-of v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    iget-boolean v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsNetworkValid:Z

    if-eqz v2, :cond_b

    .line 167
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeControllerOfLastFailedApi(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V

    goto/16 :goto_1

    .line 162
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isPollingAllowed()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsMsgAppForeground:Z

    if-eqz v2, :cond_b

    .line 163
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeControllerOfLastFailedApi(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V

    goto/16 :goto_1

    .line 171
    :cond_2
    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v3, "no failed API before, resume all handlers"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeHandlers(Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V

    .line 174
    goto/16 :goto_1

    .line 136
    .end local v0    # "paramResume":Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;
    .end local v1    # "controller":Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;

    .line 137
    .local v0, "paramPause":Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isPollingAllowed()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsMsgAppForeground:Z

    if-nez v1, :cond_3

    .line 139
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v2, "Pause polling"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->pause()V

    .line 142
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isTokenRequestedFromProvision()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 143
    iget-boolean v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsNetworkValid:Z

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsProvisionSuccess:Z

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsUserDeleteAccount:Z

    if-nez v1, :cond_4

    .line 145
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v2, "Should only disable polling"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 147
    :cond_4
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->pauseAllSyncHandler()V

    goto/16 :goto_1

    .line 150
    :cond_5
    iget-boolean v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsNetworkValid:Z

    if-nez v1, :cond_b

    .line 151
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->pauseAllSyncHandler()V

    goto/16 :goto_1

    .line 183
    .end local v0    # "paramPause":Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;
    :pswitch_4
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isPollingAllowed()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 184
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->start()V

    .line 186
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isMultiLineSupported()Z

    move-result v0

    if-nez v0, :cond_b

    .line 187
    new-instance v0, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getUserTelCtn()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendAppSyncResetBox(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V

    goto/16 :goto_1

    .line 209
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 210
    .local v0, "listNormalSyncDownload":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    if-eqz v0, :cond_b

    .line 211
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendDownloadToDataChangeHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto/16 :goto_1

    .line 203
    .end local v0    # "listNormalSyncDownload":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 204
    .local v0, "listInitSyncUpload":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    if-eqz v0, :cond_b

    .line 205
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendUploadToHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto/16 :goto_1

    .line 197
    .end local v0    # "listInitSyncUpload":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 198
    .local v0, "listInitSyncDownload":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    if-eqz v0, :cond_b

    .line 199
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendDownloadToHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto/16 :goto_1

    .line 191
    .end local v0    # "listInitSyncDownload":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 192
    .local v0, "listNormalSyncUpdate":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    if-eqz v0, :cond_b

    .line 193
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendDeviceUpdateToHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_1

    .line 176
    .end local v0    # "listNormalSyncUpdate":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    :pswitch_9
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    .line 177
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isPollingAllowed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->stop()V

    .line 180
    :cond_7
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->stopAllSyncHandler()V

    .line 181
    goto :goto_1

    .line 129
    :pswitch_a
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isPollingAllowed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->pause()V

    .line 133
    :cond_8
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->pauseAllSyncHandler()V

    .line 134
    goto :goto_1

    .line 119
    :pswitch_b
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    if-nez v0, :cond_b

    .line 120
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v1, "Resume all handlers"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isPollingAllowed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->resume()V

    .line 125
    :cond_9
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeAllSyncHandler()V

    goto :goto_1

    .line 99
    :pswitch_c
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isPollingAllowed()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;)V

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->start()V

    .line 114
    :cond_a
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isMultiLineSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 115
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->startAllSyncHandler()V

    .line 222
    :cond_b
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected logWorkingStatus()V
    .locals 3

    .line 866
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logWorkingStatus: [mIsRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsFallbackProvisionInProcess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    return-void
.end method

.method public onCloudObjectNotificationUpdated(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 775
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 776
    return-void
.end method

.method public onCloudSyncStopped(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 739
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 740
    return-void
.end method

.method public onDeviceFlagUpdateCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 800
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 801
    return-void
.end method

.method public onDeviceFlagUpdateSchedulerStarted()V
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onDeviceFlagUpdateSchedulerStarted()V

    .line 717
    return-void
.end method

.method public onFallbackToProvision(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V
    .locals 3
    .param p1, "controller"    # Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .param p2, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p3, "delaySecs"    # I

    .line 846
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check fallback to provision: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "provision is in process, wait until next resume"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->onPauseCMNNetApi()V

    .line 848
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    if-nez v0, :cond_1

    .line 849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    .line 850
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0, p1, p0, p2, p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->onOmaApiCredentialFailed(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V

    .line 853
    :cond_1
    return-void
.end method

.method public onInitSyncCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 3
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 721
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitSyncCompleted getUserTbs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getUserTbs()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getUserTbs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onInitialDBSyncCompleted()V

    .line 725
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 727
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->shouldStopInitSyncUponLowMemory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->unregisterLowStorageReceiver()V

    .line 730
    :cond_1
    return-void
.end method

.method public onInitSyncSummaryCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 734
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 735
    return-void
.end method

.method public onInitialSyncStarted()V
    .locals 1

    .line 707
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 709
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->shouldStopInitSyncUponLowMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->registerLowStorageReceiver()V

    .line 712
    :cond_0
    return-void
.end method

.method public onLineSITRefreshed(Ljava/lang/String;)V
    .locals 3
    .param p1, "line"    # Ljava/lang/String;

    .line 249
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLineSITRefreshed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeAllSyncHandlerByLine(Ljava/lang/String;)V

    .line 253
    :cond_0
    return-void
.end method

.method public onMessageDownloadCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 755
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 756
    return-void
.end method

.method public onMessageUploadCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 760
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 761
    return-void
.end method

.method public onNotificationObjectDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 785
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 786
    return-void
.end method

.method public onOmaAuthenticationFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;J)V
    .locals 1
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p2, "delayInMillis"    # J

    .line 790
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onOmaProvisionFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;J)V

    .line 791
    return-void
.end method

.method public onOmaFailExceedMaxCount()V
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onOmaFailExceedMaxCount()V

    .line 863
    return-void
.end method

.method public onOmaSuccess(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 1
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 857
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->onOmaSuccess(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 858
    return-void
.end method

.method public onOneDeviceFlagUpdated(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 795
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 796
    return-void
.end method

.method public onOneMessageDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 765
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 766
    return-void
.end method

.method public onOneMessageUploaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 770
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 771
    return-void
.end method

.method public onPartialSyncSummaryCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 780
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 781
    return-void
.end method

.method public onPauseCMNNetApi()V
    .locals 1

    .line 832
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendEmptyMessage(I)Z

    .line 833
    return-void
.end method

.method public onPauseCMNNetApiWithResumeDelay(I)V
    .locals 5
    .param p1, "secs"    # I

    .line 837
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pause all net API, resume all "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " seconds later"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->removeMessages(I)V

    .line 839
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendEmptyMessage(I)Z

    .line 840
    int-to-long v1, p1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 841
    return-void
.end method

.method public onSyncFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 2
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 744
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 747
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->shouldStopInitSyncUponLowMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getOMASyncEventType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CANCEL_INITIAL_SYNC:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    if-ne v0, v1, :cond_0

    .line 749
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->unregisterLowStorageReceiver()V

    .line 751
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    .line 680
    return-void
.end method

.method public pausewithStatusParam(Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V
    .locals 3
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;

    .line 683
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pausewithStatusParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 685
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 686
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 687
    return-void
.end method

.method public registerForUpdateFromCloud(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mUpdateFromCloudRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 74
    return-void
.end method

.method public removeUpdateSubscriptionChannelEvent()V
    .locals 2

    .line 885
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->REMOVE_UPDATE_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    .line 886
    return-void
.end method

.method public resetChannelState()V
    .locals 2

    .line 932
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->RESET_STATE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    .line 933
    return-void
.end method

.method public resume()V
    .locals 0

    .line 698
    return-void
.end method

.method public resumewithStatusParam(Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V
    .locals 3
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;

    .line 690
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumewithStatusParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 692
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 693
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 694
    return-void
.end method

.method public sendAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V
    .locals 1
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    .line 622
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object v0

    .line 623
    .local v0, "handler":Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->start()V

    .line 624
    return-void
.end method

.method public sendAppSyncResetBox(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V
    .locals 1
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    .line 627
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object v0

    .line 628
    .local v0, "handler":Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->resetSearchParam()V

    .line 629
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->start()V

    .line 630
    return-void
.end method

.method public sendInitialSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 1
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 644
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 645
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 646
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 647
    return-void
.end method

.method public sendNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 1
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 650
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 651
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 652
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 653
    return-void
.end method

.method public sendUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 1
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 638
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 639
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 640
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 641
    return-void
.end method

.method public sendUpload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 1
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 656
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 657
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 658
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 659
    return-void
.end method

.method public setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

    .line 878
    return-void
.end method

.method public start()V
    .locals 1

    .line 672
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendEmptyMessage(I)Z

    .line 673
    return-void
.end method

.method public start_resetBox()V
    .locals 1

    .line 676
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendEmptyMessage(I)Z

    .line 677
    return-void
.end method

.method public stop()V
    .locals 1

    .line 701
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendEmptyMessage(I)Z

    .line 702
    return-void
.end method

.method public stopAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V
    .locals 1
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    .line 633
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object v0

    .line 634
    .local v0, "handler":Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->stop()V

    .line 635
    return-void
.end method

.method public update(I)Z
    .locals 1
    .param p1, "eventType"    # I

    .line 805
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendEmptyMessage(I)Z

    move-result v0

    return v0
.end method

.method public updateDelay(IJ)Z
    .locals 1
    .param p1, "eventType"    # I
    .param p2, "delay"    # J

    .line 810
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendEmptyMessageDelayed(IJ)Z

    move-result v0

    return v0
.end method

.method public updateDelayRetry(IJ)Z
    .locals 1
    .param p1, "eventType"    # I
    .param p2, "delay"    # J

    .line 816
    const/4 v0, 0x0

    return v0
.end method

.method public updateMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 822
    const/4 v0, 0x0

    return v0
.end method

.method public updateSubscriptionChannel()V
    .locals 4

    .line 881
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_SUBSCRIPTION_CHANNEL_DELAY:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    const-wide/32 v2, 0xea60

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateDelay(IJ)Z

    .line 882
    return-void
.end method
