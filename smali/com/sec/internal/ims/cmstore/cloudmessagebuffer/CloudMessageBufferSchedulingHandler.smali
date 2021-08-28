.class public Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;
.super Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;
.source "CloudMessageBufferSchedulingHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageBufferEvent;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "deviceDataListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;
    .param p4, "callback"    # Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;
    .param p5, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;)V

    .line 65
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 67
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->registerRegistrants()V

    .line 68
    return-void
.end method

.method private handleDftMsgAppChangedToNative()V
    .locals 5

    .line 365
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "linenum":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->getLineInitSyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v1

    .line 367
    .local v1, "initSyncStatus":I
    sget-object v2, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDftMsgAppChangedToNative initSyncStatus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 370
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mIsGoforwardSync:Z

    .line 371
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->startGoForwardSyncDbCopyTask()V

    .line 373
    :cond_0
    return-void
.end method

.method private handleDownloadedAllPayloads(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 3
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p2, "isInitialSync"    # Z

    .line 621
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    if-nez v0, :cond_0

    .line 622
    return-void

    .line 624
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onGreetingAllPayloadDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    .line 641
    goto :goto_0

    .line 634
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onVvmAllPayloadDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    .line 635
    goto :goto_0

    .line 637
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mFaxScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->onFaxAllPayloadDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    .line 638
    goto :goto_0

    .line 631
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->onRcsAllPayloadsDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    .line 632
    nop

    .line 645
    :goto_0
    return-void
.end method

.method private handleDownloadedPayload(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 3
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p2, "isInitialSync"    # Z

    .line 578
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    if-nez v0, :cond_0

    .line 579
    return-void

    .line 581
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onMmsPayloadDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    .line 586
    goto :goto_0

    .line 588
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->onRcsPayloadDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    .line 589
    nop

    .line 602
    :goto_0
    return-void
.end method

.method private handleNotifyObject(Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;Ljava/lang/String;)V
    .locals 6
    .param p1, "notification"    # Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;
    .param p2, "line"    # Ljava/lang/String;

    .line 317
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v0, v0, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    if-eqz v0, :cond_1

    .line 318
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 319
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    aget-object v1, v1, v0

    .line 320
    .local v1, "event":Lcom/sec/internal/omanetapi/nms/data/NmsEvent;
    iget-object v2, v1, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->notifyObject:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/NotifyObject;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->notifyObject:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/NotifyObject;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/NotifyObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->notifyObject:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/NotifyObject;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/NotifyObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->folderURL:Ljava/net/URL;

    if-eqz v2, :cond_0

    .line 323
    iget-object v2, v1, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->notifyObject:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/NotifyObject;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/NotifyObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->folderURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "folderId":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleNotifyObject: notifyObject, folderID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    sget-object v3, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageFolderId;->mVVMailGreeting:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 327
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v3, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onNotifyObjectReceived(Ljava/lang/String;)V

    .line 318
    .end local v1    # "event":Lcom/sec/internal/omanetapi/nms/data/NmsEvent;
    .end local v2    # "folderId":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private handleProvisionSuccess()V
    .locals 7

    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mProvisionSuccess:Z

    .line 377
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "linenum":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->getLineInitSyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)I

    move-result v2

    .line 379
    .local v2, "initSyncStatus":I
    invoke-static {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v3

    .line 380
    .local v3, "event":Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;
    sget-object v4, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check initial sync status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " linenum:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 380
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    if-nez v3, :cond_0

    .line 384
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 386
    :cond_0
    sget-object v4, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v0, :cond_3

    const/4 v0, 0x2

    if-eq v4, v0, :cond_2

    const/4 v0, 0x3

    if-eq v4, v0, :cond_1

    const/4 v0, 0x4

    if-eq v4, v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->onInitialDBCopyDone()V

    goto :goto_0

    .line 400
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->startInitialDBCopy()V

    .line 401
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->onInitialDBCopyDone()V

    .line 402
    goto :goto_0

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->onInitialDBCopyDone()V

    .line 395
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v0, v4}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onSendUnDownloadedMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V

    .line 396
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getBufferDbLoaded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mBufferDBloaded:Z

    .line 397
    goto :goto_0

    .line 388
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->onInitialDBCopyDone()V

    .line 389
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onSendCloudUnSyncedUpdate()V

    .line 390
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onSendDeviceUnSyncedUpdate()V

    .line 391
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getBufferDbLoaded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mBufferDBloaded:Z

    .line 392
    nop

    .line 407
    :goto_0
    return-void
.end method

.method private handleRCSDbReady()V
    .locals 1

    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mRCSDbReady:Z

    .line 411
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->startInitialDBCopy()V

    .line 412
    return-void
.end method

.method private handleReceivedGcm(Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;)V
    .locals 6
    .param p1, "pushnotification"    # Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;

    .line 252
    if-nez p1, :cond_0

    .line 253
    return-void

    .line 256
    :cond_0
    const/4 v0, 0x0

    .line 258
    .local v0, "line":Ljava/lang/String;
    :try_start_0
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->recipients:[Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoPushNotificationRecipients;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoPushNotificationRecipients;->uri:Ljava/lang/String;

    move-object v0, v1

    .line 259
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 260
    sget-object v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pushnotification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    goto :goto_0

    .line 261
    :catch_0
    move-exception v1

    .line 262
    .local v1, "e":Ljava/lang/NullPointerException;
    sget-object v2, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nullpointer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_0
    if-nez v0, :cond_1

    .line 265
    return-void

    .line 267
    :cond_1
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->pnsType:Ljava/lang/String;

    .line 268
    const-string v2, "Notify"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->pnsSubtype:Ljava/lang/String;

    .line 270
    const-string v2, "FullSync"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleNotifyObject(Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 274
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    iget-object v2, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->pnsType:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->pnsSubtype:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->makeParamNotificationType(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;

    move-result-object v1

    .line 277
    .local v1, "dataContract":Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;
    if-eqz v1, :cond_a

    .line 278
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;->getDataType()Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "dataType":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;->getContractType()I

    move-result v3

    .line 280
    .local v3, "contractType":I
    new-instance v4, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;

    invoke-direct {v4, v2, v3, v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;)V

    .line 282
    .local v4, "paramNmsNotificationList":Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;
    const-string v5, "SMS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 283
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    .line 284
    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onNotificationReceived(Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;)V

    goto :goto_2

    .line 285
    :cond_3
    nop

    .line 286
    const-string v5, "MMS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 287
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    .line 288
    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onNotificationReceived(Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;)V

    goto :goto_2

    .line 289
    :cond_4
    nop

    .line 290
    const-string v5, "FAX"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 291
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mFaxScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;

    .line 292
    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->onNotificationReceived(Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;)V

    goto :goto_2

    .line 293
    :cond_5
    nop

    .line 294
    const-string v5, "CALLLOGDATA"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 295
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mCallLogScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;

    .line 296
    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->onNotificationReceived(Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;)V

    goto :goto_2

    .line 297
    :cond_6
    nop

    .line 298
    const-string v5, "CHAT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 300
    const-string v5, "FT"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 302
    const-string v5, "IMDN"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_1

    .line 305
    :cond_7
    nop

    .line 306
    const-string v5, "GSO"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 307
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->onNotificationGSOReceived(Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;)V

    goto :goto_2

    .line 309
    :cond_8
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    .line 310
    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onNotificationReceived(Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;)V

    goto :goto_2

    .line 303
    :cond_9
    :goto_1
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    .line 304
    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->onNotificationReceived(Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;)V

    .line 314
    .end local v1    # "dataContract":Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy$NmsNotificationType;
    .end local v2    # "dataType":Ljava/lang/String;
    .end local v3    # "contractType":I
    .end local v4    # "paramNmsNotificationList":Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;
    :cond_a
    :goto_2
    return-void
.end method

.method private handleSearchObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 8
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p2, "isGoforwardSync"    # Z

    .line 491
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v2

    .line 492
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSearchCursor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getOMASyncEventType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v4

    .line 491
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->updateLineInitsyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;I)V

    .line 493
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MessageApp"

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 494
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 499
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->FAX:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 500
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mFaxScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;

    .line 503
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;->START:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    .line 500
    const-string v4, "FAX"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->notifyInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;)V

    goto :goto_1

    .line 495
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    .line 498
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;->START:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    .line 495
    const-string v4, "MSG_ALL"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->notifyInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;)V

    .line 505
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getObjectList()Lcom/sec/internal/omanetapi/nms/data/ObjectList;

    move-result-object v0

    .line 506
    .local v0, "olst":Lcom/sec/internal/omanetapi/nms/data/ObjectList;
    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v2, v0, Lcom/sec/internal/omanetapi/nms/data/ObjectList;->object:[Lcom/sec/internal/omanetapi/nms/data/Object;

    if-eqz v2, :cond_9

    .line 507
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v3, v0, Lcom/sec/internal/omanetapi/nms/data/ObjectList;->object:[Lcom/sec/internal/omanetapi/nms/data/Object;

    array-length v3, v3

    if-ge v2, v3, :cond_9

    .line 508
    iget-object v3, v0, Lcom/sec/internal/omanetapi/nms/data/ObjectList;->object:[Lcom/sec/internal/omanetapi/nms/data/Object;

    aget-object v3, v3, v2

    .line 509
    .local v3, "objt":Lcom/sec/internal/omanetapi/nms/data/Object;
    new-instance v4, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    const/4 v6, -0x1

    invoke-direct {v4, v3, v1, v6, v5}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;-><init>(Lcom/sec/internal/omanetapi/nms/data/Object;ZILcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 510
    .local v4, "param":Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    iget v5, v4, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    if-ne v5, v6, :cond_3

    .line 511
    goto/16 :goto_3

    .line 513
    :cond_3
    sget-object v5, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "param.mObjectType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget v5, v4, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_7

    const/4 v6, 0x4

    if-eq v5, v6, :cond_6

    const/16 v6, 0x15

    if-eq v5, v6, :cond_5

    const/16 v6, 0x22

    if-eq v5, v6, :cond_4

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    goto :goto_3

    .line 544
    :pswitch_0
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleObjectVvmGreetingCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J

    .line 545
    goto :goto_3

    .line 532
    :pswitch_1
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v5, v4, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleObjectVvmMessageCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Z)J

    .line 534
    goto :goto_3

    .line 540
    :pswitch_2
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mCallLogScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->handleObjectCallLogMessageCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J

    .line 542
    goto :goto_3

    .line 529
    :pswitch_3
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleObjectRCSIMDNCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J

    .line 530
    goto :goto_3

    .line 524
    :pswitch_4
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldSkipMessage(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 525
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v5, v4, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleObjectRCSMessageCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Z)J

    goto :goto_3

    .line 547
    :cond_4
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v5, v4, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleCloudNotifyGSOChangedObj(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Lcom/sec/internal/omanetapi/nms/data/Object;)V

    .line 548
    goto :goto_3

    .line 536
    :cond_5
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mFaxScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;

    invoke-virtual {v5, v4, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->handleObjectFaxMessageCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Z)J

    .line 538
    goto :goto_3

    .line 519
    :cond_6
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->handleObjectMMSCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J

    .line 520
    goto :goto_3

    .line 516
    :cond_7
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->handleObjectSMSCloudSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J

    .line 517
    nop

    .line 507
    .end local v3    # "objt":Lcom/sec/internal/omanetapi/nms/data/Object;
    .end local v4    # "param":Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 556
    .end local v2    # "i":I
    :cond_9
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getActionType()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_SYNC_SUMMARY_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 558
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onSendUnDownloadedMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V

    .line 560
    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleStartFullSync(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V
    .locals 8
    .param p1, "list"    # Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    .line 191
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStartFullSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    if-nez p1, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    .line 194
    .local v1, "value":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mLine:Ljava/lang/String;

    .line 195
    .local v2, "line":Ljava/lang/String;
    iget-object v3, v1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mAppType:Ljava/lang/String;

    .line 196
    .local v3, "appType":Ljava/lang/String;
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mDataType:Ljava/lang/String;

    .line 197
    .local v4, "dataType":Ljava/lang/String;
    const-string v5, "MessageApp"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 198
    const-string v6, "MSG_ALL"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 199
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v5, v2, v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->insertNewLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    .line 200
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    new-instance v6, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v6, v2, v7}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V

    goto/16 :goto_1

    .line 201
    :cond_1
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 203
    const-string v5, "FAX"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 204
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->FAX:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v5, v2, v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->insertNewLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    .line 205
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    new-instance v6, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->FAX:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v6, v2, v7}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V

    goto :goto_1

    .line 206
    :cond_2
    const-string v5, "CALLLOGDATA"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 208
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->CALLLOG:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v5, v2, v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->insertNewLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    .line 209
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    new-instance v6, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->CALLLOG:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v6, v2, v7}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V

    goto :goto_1

    .line 210
    :cond_3
    const-string v5, "VVMDATA"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 212
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 213
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v5, v2, v6}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->insertNewLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    .line 214
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    new-instance v6, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v6, v2, v7}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V

    goto :goto_1

    .line 215
    :cond_4
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 217
    const-string v5, "GREETING"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 218
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    const/16 v6, 0x12

    invoke-virtual {v5, v6, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->wipeOutData(ILjava/lang/String;)V

    .line 221
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    new-instance v6, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v6, v2, v7}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V

    .line 224
    .end local v1    # "value":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "appType":Ljava/lang/String;
    .end local v4    # "dataType":Ljava/lang/String;
    :cond_5
    :goto_1
    goto/16 :goto_0

    .line 225
    :cond_6
    return-void
.end method

.method private handleStopSync(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V
    .locals 7
    .param p1, "list"    # Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    .line 228
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStopSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    if-nez p1, :cond_0

    return-void

    .line 230
    :cond_0
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;

    .line 231
    .local v1, "value":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mLine:Ljava/lang/String;

    .line 232
    .local v2, "line":Ljava/lang/String;
    iget-object v3, v1, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;->mAppType:Ljava/lang/String;

    .line 233
    .local v3, "type":Ljava/lang/String;
    const-string v4, "MessageApp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 234
    const-string v4, "RCSDATA"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 239
    :cond_1
    const-string v4, "CALLLOGDATA"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 241
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->CALLLOG:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v4, v2, v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->deleteLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    .line 242
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    new-instance v5, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->CALLLOG:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v5, v2, v6}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->stopAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V

    goto :goto_2

    .line 243
    :cond_2
    const-string v4, "VVMDATA"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 245
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v4, v2, v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->deleteLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    .line 246
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    new-instance v5, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v5, v2, v6}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->stopAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V

    goto :goto_2

    .line 235
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v4, v2, v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->deleteLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    .line 236
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->FAX:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v4, v2, v5}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->deleteLine(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    .line 237
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    new-instance v5, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v5, v2, v6}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->stopAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V

    .line 238
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    new-instance v5, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->FAX:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v5, v2, v6}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->stopAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V

    .line 248
    .end local v1    # "value":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValue;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/String;
    :cond_4
    :goto_2
    goto :goto_0

    .line 249
    :cond_5
    return-void
.end method

.method private isDelayProcessGcm(Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;)Z
    .locals 5
    .param p1, "pushnotification"    # Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;

    .line 1235
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->pnsType:Ljava/lang/String;

    const-string v1, "SMS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "MOMT"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->pnsSubtype:Ljava/lang/String;

    .line 1236
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1237
    return v2

    .line 1238
    :cond_0
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->pnsType:Ljava/lang/String;

    const-string v3, "MMS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->pnsSubtype:Ljava/lang/String;

    .line 1239
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1240
    return v2

    .line 1241
    :cond_1
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->pnsType:Ljava/lang/String;

    const-string v1, "RCSSession"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "Chat"

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->pnsSubtype:Ljava/lang/String;

    .line 1242
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1243
    return v2

    .line 1244
    :cond_2
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->pnsType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->pnsSubtype:Ljava/lang/String;

    .line 1245
    const-string v1, "FileTransfer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1246
    return v2

    .line 1247
    :cond_3
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->pnsType:Ljava/lang/String;

    const-string v1, "RCSPage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->pnsSubtype:Ljava/lang/String;

    .line 1248
    const-string v4, "LMM"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1249
    return v2

    .line 1250
    :cond_4
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->pnsType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->pnsSubtype:Ljava/lang/String;

    .line 1251
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1252
    return v2

    .line 1253
    :cond_5
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->pnsType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->pnsSubtype:Ljava/lang/String;

    .line 1254
    const-string v1, "IMDN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1255
    return v2

    .line 1257
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private isMsgPushNotification(Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;)Z
    .locals 2
    .param p1, "pushnotification"    # Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;

    .line 1261
    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->pnsType:Ljava/lang/String;

    const-string v1, "SMS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->pnsType:Ljava/lang/String;

    .line 1262
    const-string v1, "MMS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->pnsType:Ljava/lang/String;

    .line 1263
    const-string v1, "RCSSession"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->pnsType:Ljava/lang/String;

    .line 1264
    const-string v1, "RCSPage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->pnsType:Ljava/lang/String;

    .line 1265
    const-string v1, "Fax"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1261
    :goto_1
    return v0
.end method

.method private onBufferDBReadBatch(Ljava/lang/String;)V
    .locals 0
    .param p1, "json"    # Ljava/lang/String;

    .line 1116
    return-void
.end method

.method private onBulkCreationComplete(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 6
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 1357
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParamList()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1358
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParamList()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1363
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 1367
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParamList()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    move-result-object v0

    .line 1369
    .local v0, "list":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    array-length v1, v1

    .line 1370
    .local v1, "listSize":I
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 1371
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1374
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 1375
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Response;->success:Lcom/sec/internal/omanetapi/nms/data/Reference;

    if-eqz v3, :cond_3

    .line 1376
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Response;->success:Lcom/sec/internal/omanetapi/nms/data/Reference;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    if-eqz v3, :cond_3

    .line 1377
    nop

    .line 1378
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Response;->success:Lcom/sec/internal/omanetapi/nms/data/Reference;

    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1377
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleBulkOpSingleUrlSuccess(Ljava/lang/String;)V

    .line 1379
    new-instance v3, Lcom/sec/internal/omanetapi/nms/data/Reference;

    invoke-direct {v3}, Lcom/sec/internal/omanetapi/nms/data/Reference;-><init>()V

    .line 1380
    .local v3, "reference":Lcom/sec/internal/omanetapi/nms/data/Reference;
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/sec/internal/omanetapi/nms/data/Response;->success:Lcom/sec/internal/omanetapi/nms/data/Reference;

    iget-object v4, v4, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    iput-object v4, v3, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    .line 1381
    const-string v4, ""

    iput-object v4, v3, Lcom/sec/internal/omanetapi/nms/data/Reference;->path:Ljava/lang/String;

    .line 1382
    new-instance v4, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    .line 1384
    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setReference(Lcom/sec/internal/omanetapi/nms/data/Reference;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    .line 1385
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v4

    .line 1387
    .local v4, "builder":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onCloudUploadSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 1374
    .end local v3    # "reference":Lcom/sec/internal/omanetapi/nms/data/Reference;
    .end local v4    # "builder":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1390
    .end local v2    # "i":I
    :cond_4
    return-void

    .line 1364
    .end local v0    # "list":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .end local v1    # "listSize":I
    :cond_5
    :goto_1
    return-void

    .line 1359
    :cond_6
    :goto_2
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string v1, "DBchange list is empty: do nothting "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    return-void
.end method

.method private onBulkFlagUpdateComplete(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 3
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 783
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 787
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 788
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/Response;->success:Lcom/sec/internal/omanetapi/nms/data/Reference;

    if-eqz v1, :cond_1

    .line 789
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/Response;->success:Lcom/sec/internal/omanetapi/nms/data/Reference;

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    if-eqz v1, :cond_1

    .line 790
    nop

    .line 791
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/Response;->success:Lcom/sec/internal/omanetapi/nms/data/Reference;

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 790
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleBulkOpSingleUrlSuccess(Ljava/lang/String;)V

    goto :goto_1

    .line 792
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/Response;->failure:Lcom/sec/internal/omanetapi/common/data/RequestError;

    if-eqz v1, :cond_2

    .line 793
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    .line 794
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v2, v2, v0

    iget-short v2, v2, Lcom/sec/internal/omanetapi/nms/data/Response;->code:S

    .line 793
    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->bulkOpTreatSuccessIndividualResponse(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 795
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/Response;->failure:Lcom/sec/internal/omanetapi/common/data/RequestError;

    if-eqz v1, :cond_2

    .line 796
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/Response;->failure:Lcom/sec/internal/omanetapi/common/data/RequestError;

    iget-object v1, v1, Lcom/sec/internal/omanetapi/common/data/RequestError;->serviceException:Lcom/sec/internal/omanetapi/common/data/ServiceException;

    if-eqz v1, :cond_2

    .line 797
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/Response;->failure:Lcom/sec/internal/omanetapi/common/data/RequestError;

    iget-object v1, v1, Lcom/sec/internal/omanetapi/common/data/RequestError;->serviceException:Lcom/sec/internal/omanetapi/common/data/ServiceException;

    iget-object v1, v1, Lcom/sec/internal/omanetapi/common/data/ServiceException;->variables:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 799
    nop

    .line 800
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;->response:[Lcom/sec/internal/omanetapi/nms/data/Response;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/sec/internal/omanetapi/nms/data/Response;->failure:Lcom/sec/internal/omanetapi/common/data/RequestError;

    iget-object v1, v1, Lcom/sec/internal/omanetapi/common/data/RequestError;->serviceException:Lcom/sec/internal/omanetapi/common/data/ServiceException;

    iget-object v1, v1, Lcom/sec/internal/omanetapi/common/data/ServiceException;->variables:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 799
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleBulkOpSingleUrlSuccess(Ljava/lang/String;)V

    .line 787
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 805
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 784
    :cond_4
    :goto_2
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string v1, "onBulkFlagUpdateComplete: invalid return results"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    return-void
.end method

.method private onCloudDeleteObjectFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 5
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 733
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 736
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isNotifyAppOnUpdateCloudFail()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 737
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/16 v1, 0x15

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 763
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    .line 764
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    .line 765
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v2

    iget-wide v2, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 766
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 763
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->notifyMsgAppDeleteFail(IJLjava/lang/String;)V

    .line 767
    goto/16 :goto_0

    .line 771
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mCallLogScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;

    .line 772
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    .line 773
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v2

    iget-wide v2, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 774
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 771
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->notifyMsgAppDeleteFail(IJLjava/lang/String;)V

    .line 775
    goto :goto_0

    .line 745
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    .line 746
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    .line 747
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v2

    iget-wide v2, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 748
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 745
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->notifyMsgAppDeleteFail(IJLjava/lang/String;)V

    .line 749
    goto :goto_0

    .line 739
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    .line 740
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    .line 741
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v2

    iget-wide v2, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 742
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 739
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->notifyMsgAppDeleteFail(IJLjava/lang/String;)V

    .line 743
    goto :goto_0

    .line 757
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mFaxScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;

    .line 758
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    .line 759
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v2

    iget-wide v2, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 760
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 757
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->notifyMsgAppDeleteFail(IJLjava/lang/String;)V

    .line 761
    goto :goto_0

    .line 751
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    .line 752
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    .line 753
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v2

    iget-wide v2, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 754
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 751
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->notifyMsgAppDeleteFail(IJLjava/lang/String;)V

    .line 780
    :cond_7
    :goto_0
    return-void

    .line 734
    :cond_8
    :goto_1
    return-void
.end method

.method private onCloudNormalSyncObjectDownload(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 5
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .param p2, "isGoforwardSync"    # Z

    .line 866
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    if-nez v0, :cond_0

    .line 867
    return-void

    .line 869
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getObject()Lcom/sec/internal/omanetapi/nms/data/Object;

    move-result-object v1

    .line 870
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v2

    iget-boolean v2, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mIsGoforwardSync:Z

    .line 871
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v3

    iget v3, v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;-><init>(Lcom/sec/internal/omanetapi/nms/data/Object;ZILcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 872
    .local v0, "paramOMAObj":Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
    iget v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    .line 874
    return-void

    .line 876
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mSummaryQuery:Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;

    iget v2, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/cmstore/querybuilders/SummaryQueryBuilder;->insertSummaryDbUsingObjectIfNonExist(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;I)J

    .line 877
    iget v1, v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/16 v2, 0x15

    if-eq v1, v2, :cond_5

    const/16 v2, 0x22

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 907
    :pswitch_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleNormalSyncDownloadedVVMGreeting(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)V

    .line 908
    goto :goto_0

    .line 904
    :pswitch_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleNormalSyncDownloadedVVMMessage(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)V

    .line 905
    goto :goto_0

    .line 910
    :pswitch_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mCallLogScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->handleNormalSyncDownloadedCallLog(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)V

    .line 911
    goto :goto_0

    .line 898
    :pswitch_3
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleNormalSyncObjectRcsImdnDownload(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J

    .line 899
    goto :goto_0

    .line 888
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v1, v0, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->handleNormalSyncObjectMmsDownload(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Z)J

    .line 889
    goto :goto_0

    .line 883
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->handleNormalSyncObjectSmsDownload(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)J

    .line 884
    goto :goto_0

    .line 913
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getObject()Lcom/sec/internal/omanetapi/nms/data/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleCloudNotifyGSOChangedObj(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Lcom/sec/internal/omanetapi/nms/data/Object;)V

    .line 914
    goto :goto_0

    .line 901
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mFaxScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->handleNormalSyncDownloadedFaxMessage(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)V

    .line 902
    goto :goto_0

    .line 894
    :cond_6
    :pswitch_4
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v1, v0, p2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleNormalSyncObjectRcsMessageDownload(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;Z)J

    .line 896
    nop

    .line 918
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onCloudNotificationReceivedUnknownType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 13
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 921
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getNotificationList()[Lcom/sec/internal/omanetapi/nc/data/NotificationList;

    move-result-object v0

    .line 922
    .local v0, "list":[Lcom/sec/internal/omanetapi/nc/data/NotificationList;
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 923
    .local v1, "downloadlist":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 924
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mIsGoforwardSync:Z

    .line 925
    return-void

    .line 927
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isGoForwardSyncSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mIsGoforwardSync:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 929
    .local v3, "shouldSkipDeletedObjt":Z
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_9

    .line 930
    aget-object v5, v0, v4

    iget-object v5, v5, Lcom/sec/internal/omanetapi/nc/data/NotificationList;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    .line 931
    .local v5, "nmsEvents":Lcom/sec/internal/omanetapi/nms/data/NmsEventList;
    if-eqz v5, :cond_8

    iget-object v6, v5, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    if-eqz v6, :cond_8

    .line 932
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    iget-object v7, v5, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    array-length v7, v7

    if-ge v6, v7, :cond_8

    .line 933
    iget-object v7, v5, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

    aget-object v7, v7, v6

    .line 934
    .local v7, "event":Lcom/sec/internal/omanetapi/nms/data/NmsEvent;
    sget-object v8, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCloudNotificationReceivedUnknownType, ChangedObj:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    iget-object v10, v7, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->changedObject:Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    const/4 v11, 0x0

    const-string v12, "not null"

    if-nez v10, :cond_2

    move-object v10, v11

    goto :goto_3

    :cond_2
    move-object v10, v12

    :goto_3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " DeletedObj:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    iget-object v10, v7, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->deletedObject:Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    if-nez v10, :cond_3

    move-object v10, v11

    goto :goto_4

    :cond_3
    move-object v10, v12

    :goto_4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ExpiredObj:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    iget-object v10, v7, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->expiredObject:Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    if-nez v10, :cond_4

    goto :goto_5

    :cond_4
    move-object v11, v12

    :goto_5
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " shouldSkipDeletedObjt:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " mIsGoforwardSync:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mIsGoforwardSync:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 934
    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object v8, v7, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->changedObject:Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    if-eqz v8, :cond_5

    .line 940
    iget-object v8, v7, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->changedObject:Lcom/sec/internal/omanetapi/nms/data/ChangedObject;

    iget-boolean v9, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mIsGoforwardSync:Z

    invoke-virtual {p0, v8, v1, v9}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleCloudNotifyChangedObj(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Z)V

    .line 943
    :cond_5
    iget-object v8, v7, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->deletedObject:Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    if-eqz v8, :cond_6

    if-nez v3, :cond_6

    .line 944
    iget-object v8, v7, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->deletedObject:Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    invoke-virtual {p0, v8, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleCloudNotifyDeletedObj(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;Z)V

    .line 946
    :cond_6
    iget-object v8, v7, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->expiredObject:Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    if-eqz v8, :cond_7

    .line 947
    iget-object v8, v7, Lcom/sec/internal/omanetapi/nms/data/NmsEvent;->expiredObject:Lcom/sec/internal/omanetapi/nms/data/DeletedObject;

    invoke-virtual {p0, v8}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleExpiredObject(Lcom/sec/internal/omanetapi/nms/data/DeletedObject;)V

    .line 932
    .end local v7    # "event":Lcom/sec/internal/omanetapi/nms/data/NmsEvent;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 929
    .end local v5    # "nmsEvents":Lcom/sec/internal/omanetapi/nms/data/NmsEventList;
    .end local v6    # "j":I
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 952
    .end local v4    # "i":I
    :cond_9
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 953
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v4, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 955
    :cond_a
    iget-boolean v4, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mIsGoforwardSync:Z

    if-eqz v4, :cond_b

    .line 956
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onSendCloudUnSyncedUpdate()V

    .line 957
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mIsGoforwardSync:Z

    .line 959
    :cond_b
    return-void
.end method

.method private onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 3
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 962
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    if-nez v0, :cond_0

    .line 963
    return-void

    .line 965
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/16 v1, 0xe

    if-eq v0, v1, :cond_6

    const/16 v1, 0x15

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb

    if-eq v0, v1, :cond_6

    const/16 v1, 0xc

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 982
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    .line 983
    goto :goto_0

    .line 979
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mCallLogScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    .line 980
    goto :goto_0

    .line 970
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    .line 971
    goto :goto_0

    .line 967
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    .line 968
    goto :goto_0

    .line 985
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mFaxScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    .line 986
    goto :goto_0

    .line 976
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    .line 977
    nop

    .line 990
    :goto_0
    return-void
.end method

.method private onCloudUploadSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 4
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 993
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    if-nez v0, :cond_0

    .line 994
    return-void

    .line 996
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getReference()Lcom/sec/internal/omanetapi/nms/data/Reference;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 997
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    if-eq v0, v2, :cond_3

    const/16 v3, 0xe

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/16 v3, 0xb

    if-eq v0, v3, :cond_3

    const/16 v3, 0xc

    if-eq v0, v3, :cond_3

    packed-switch v0, :pswitch_data_0

    .line 1019
    goto :goto_0

    .line 1011
    :pswitch_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mFaxScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->handleSendFaxMessageResponse(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    .line 1012
    goto :goto_0

    .line 1016
    :pswitch_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleUpdateVVMResponse(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    .line 1017
    goto :goto_0

    .line 1002
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onCloudUploadSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    .line 1003
    goto :goto_0

    .line 999
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onCloudUploadSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    .line 1000
    goto :goto_0

    .line 1008
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->onCloudUploadSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    .line 1009
    goto :goto_0

    .line 1022
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1024
    :pswitch_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mFaxScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->handleSendFaxMessageResponse(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    .line 1025
    goto :goto_0

    .line 1029
    :pswitch_3
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleUpdateVVMResponse(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    .line 1030
    nop

    .line 1035
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private onDownloadFailure(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 3
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 824
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    if-nez v0, :cond_0

    .line 825
    return-void

    .line 827
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    .line 828
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 830
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 832
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->handleDownLoadMessageResponse(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    goto :goto_1

    .line 829
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleDownLoadMessageResponse(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    .line 834
    :cond_3
    :goto_1
    return-void
.end method

.method private onInitialSyncComplete(ZLjava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 5
    .param p1, "isSuccess"    # Z
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "syncType"    # Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    .param p4, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 1039
    if-nez p2, :cond_0

    .line 1040
    return-void

    .line 1042
    :cond_0
    if-eqz p1, :cond_1

    .line 1043
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mMultiLnScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;

    invoke-virtual {p4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v1

    .line 1044
    invoke-virtual {p4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSearchCursor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getOMASyncEventType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    .line 1043
    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/MultiLineScheduler;->updateLineInitsyncStatus(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;I)V

    .line 1046
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MessageApp"

    if-nez v0, :cond_4

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 1047
    invoke-virtual {p4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1059
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->FAX:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {p4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1060
    const-string v0, "FAX"

    if-eqz p1, :cond_3

    .line 1061
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mFaxScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;->FINISHED:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    invoke-virtual {v2, v1, v0, p2, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->notifyInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;)V

    goto :goto_1

    .line 1066
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mFaxScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;->FAIL:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    invoke-virtual {v2, v1, v0, p2, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->notifyInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;)V

    goto :goto_1

    .line 1048
    :cond_4
    :goto_0
    const-string v0, "MSG_ALL"

    if-eqz p1, :cond_5

    .line 1049
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;->FINISHED:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    invoke-virtual {v2, v1, v0, p2, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->notifyInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;)V

    goto :goto_1

    .line 1054
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;->FAIL:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    invoke-virtual {v2, v1, v0, p2, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->notifyInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;)V

    .line 1072
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onHandlePendingNmsEvent()V

    .line 1075
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getIsInitSyncIndicatorRequired()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1076
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string v2, "Send a to init sync termial flag(RowId = -1) to messaging app"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    const-wide/16 v2, -0x1

    const-string v4, "SMS"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->notifyMsgAppCldNotification(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1083
    :cond_7
    return-void
.end method

.method private onLineActivated(Ljava/lang/String;)V
    .locals 0
    .param p1, "teluri"    # Ljava/lang/String;

    .line 1097
    return-void
.end method

.method private onLineDeactivated(Ljava/lang/String;)V
    .locals 0
    .param p1, "teluri"    # Ljava/lang/String;

    .line 1104
    return-void
.end method

.method private onMailBoxReset()V
    .locals 1

    .line 837
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->cleanAllBufferDB()V

    .line 838
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->startInitialSyncDBCopyTask()V

    .line 839
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->onMailBoxResetBufferDbDone()V

    .line 840
    return-void
.end method

.method private onServiceRestarted()V
    .locals 1

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mProvisionSuccess:Z

    .line 187
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->setBufferDBLoaded(Z)V

    .line 188
    return-void
.end method

.method private onUpLoadFailureHandling(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 3
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 808
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    if-nez v0, :cond_0

    .line 809
    return-void

    .line 811
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 812
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mFaxScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->handleSendFaxMessageResponse(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    goto :goto_0

    .line 813
    :cond_1
    nop

    .line 814
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    .line 815
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_2

    .line 817
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_3

    .line 819
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleUpdateVVMResponse(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    .line 821
    :cond_3
    :goto_0
    return-void
.end method

.method private onUpdateFromCloud(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 3
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 648
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateFromCloud: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mIsGoforwardSync:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mIsGoforwardSync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getActionType()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 652
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->$SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType:[I

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getActionType()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 725
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onBulkCreationComplete(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 726
    goto/16 :goto_0

    .line 722
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onBulkFlagUpdateComplete(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 723
    goto/16 :goto_0

    .line 719
    :pswitch_3
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->handleVvmProfileDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 720
    goto/16 :goto_0

    .line 714
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onCloudDeleteObjectFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 715
    goto :goto_0

    .line 711
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onUpLoadFailureHandling(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 712
    goto :goto_0

    .line 708
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onDownloadFailure(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 709
    goto :goto_0

    .line 705
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onCloudNotificationReceivedUnknownType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 706
    goto :goto_0

    .line 702
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onCloudUpdateFlagSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 703
    goto :goto_0

    .line 696
    :pswitch_9
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onMailBoxReset()V

    .line 697
    goto :goto_0

    .line 690
    :pswitch_a
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleDownloadedAllPayloads(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    .line 691
    goto :goto_0

    .line 687
    :pswitch_b
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleDownloadedPayload(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    .line 688
    goto :goto_0

    .line 684
    :pswitch_c
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onCloudNormalSyncObjectDownload(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    .line 685
    goto :goto_0

    .line 681
    :pswitch_d
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mBufferDBChangeNetAPI:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 682
    goto :goto_0

    .line 677
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onCloudUploadSuccess(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 678
    goto :goto_0

    .line 674
    :pswitch_f
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->notifyNetAPIUploadMessages(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V

    .line 675
    goto :goto_0

    .line 671
    :pswitch_10
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleDownloadedAllPayloads(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    .line 672
    goto :goto_0

    .line 668
    :pswitch_11
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleDownloadedPayload(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    .line 669
    goto :goto_0

    .line 663
    :pswitch_12
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onInitialSyncComplete(ZLjava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 664
    goto :goto_0

    .line 658
    :pswitch_13
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleSearchObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    .line 659
    goto :goto_0

    .line 654
    :pswitch_14
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onInitialSyncComplete(ZLjava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 655
    nop

    .line 730
    :goto_0
    return-void

    .line 650
    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onUpdateFromDeviceLegacy()V
    .locals 0

    .line 424
    return-void
.end method

.method private onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;)V
    .locals 2
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;

    .line 427
    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mTableindex:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 441
    :pswitch_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mFaxScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mIsGoforwardSync:Z

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/FaxScheduler;->onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;Z)V

    .line 442
    goto :goto_0

    .line 447
    :pswitch_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mVVMScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mIsGoforwardSync:Z

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler;->onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;Z)V

    .line 448
    goto :goto_0

    .line 450
    :pswitch_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mCallLogScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mIsGoforwardSync:Z

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/CallLogScheduler;->onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;Z)V

    .line 451
    goto :goto_0

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mIsGoforwardSync:Z

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;Z)V

    .line 433
    goto :goto_0

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mIsGoforwardSync:Z

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;Z)V

    .line 430
    goto :goto_0

    .line 438
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mIsGoforwardSync:Z

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;Z)V

    .line 439
    nop

    .line 455
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onUpdateFromDeviceMsgAppFetchFailed(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;)V
    .locals 3
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;

    .line 458
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateFromDeviceMsgAppFetchFailed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;->mTableindex:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mMmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/MmsScheduler;->onUpdateFromDeviceMsgAppFetchFailed(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;)V

    .line 465
    goto :goto_0

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mSmsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/SmsScheduler;->onUpdateFromDeviceMsgAppFetchFailed(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;)V

    .line 462
    goto :goto_0

    .line 470
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->onUpdateFromDeviceMsgAppFetchFailed(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;)V

    .line 471
    nop

    .line 475
    :goto_0
    return-void
.end method

.method private onWorkingStatusChanged(Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;)V
    .locals 3
    .param p1, "status"    # Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    .line 335
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWorkingStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler$1;->$SwitchMap$com$sec$internal$interfaces$ims$cmstore$IWorkingStatusProvisionListener$WorkingStatus:[I

    invoke-virtual {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 357
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onMailBoxReset()V

    .line 358
    goto :goto_0

    .line 354
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->cleanAllBufferDB()V

    .line 355
    goto :goto_0

    .line 351
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->restartService()V

    .line 352
    goto :goto_0

    .line 348
    :cond_3
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleDftMsgAppChangedToNative()V

    .line 349
    goto :goto_0

    .line 343
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onSendCloudUnSyncedUpdate()V

    .line 344
    goto :goto_0

    .line 338
    :cond_5
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleProvisionSuccess()V

    .line 339
    nop

    .line 362
    :goto_0
    return-void
.end method

.method private registerRegistrants()V
    .locals 3

    .line 71
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerRegistrants()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->registerForUpdateFromCloud(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->registerForUpdateOfWorkingStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 75
    return-void
.end method

.method private restartService()V
    .locals 2

    .line 1107
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1108
    return-void
.end method

.method private startInitialDBCopy()V
    .locals 3

    .line 1086
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getBufferDbLoaded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mBufferDBloaded:Z

    .line 1087
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startInitialDBCopy(), mProvisionSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mProvisionSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mRCSDbReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mRCSDbReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mBufferDBloaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mBufferDBloaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mRCSDbReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mBufferDBloaded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mProvisionSuccess:Z

    if-eqz v0, :cond_0

    .line 1090
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onLineActivated(Ljava/lang/String;)V

    .line 1091
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1093
    :cond_0
    return-void
.end method


# virtual methods
.method public activateLine(Ljava/lang/String;)V
    .locals 3
    .param p1, "msisdn"    # Ljava/lang/String;

    .line 1215
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getNormalizedTelUri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 1216
    .local v0, "uri":Lcom/sec/ims/util/ImsUri;
    if-eqz v0, :cond_0

    .line 1217
    const/16 v1, 0xc

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1219
    :cond_0
    return-void
.end method

.method public bufferDbReadBatchMessageJson(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .line 1327
    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1328
    return-void
.end method

.method public createParticipant(Ljava/lang/String;)V
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;

    .line 1194
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1, p1}, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;-><init>(ILcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Ljava/lang/String;)V

    .line 1197
    .local v0, "para":Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1198
    return-void
.end method

.method public createSession(Ljava/lang/String;)V
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;

    .line 1187
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    const/16 v2, 0xa

    invoke-direct {v0, v2, v1, p1}, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;-><init>(ILcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Ljava/lang/String;)V

    .line 1190
    .local v0, "para":Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1191
    return-void
.end method

.method public deActivateLine(Ljava/lang/String;)V
    .locals 3
    .param p1, "msisdn"    # Ljava/lang/String;

    .line 1222
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getNormalizedTelUri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 1223
    .local v0, "uri":Lcom/sec/ims/util/ImsUri;
    if-eqz v0, :cond_0

    .line 1224
    const/16 v1, 0xd

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1226
    :cond_0
    return-void
.end method

.method public deleteMessageJson(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .line 1310
    const/16 v0, 0x13

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1311
    return-void
.end method

.method public deleteParticipant(Ljava/lang/String;)V
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;

    .line 1208
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1, p1}, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;-><init>(ILcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Ljava/lang/String;)V

    .line 1211
    .local v0, "para":Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1212
    return-void
.end method

.method public deleteSession(Ljava/lang/String;)V
    .locals 3
    .param p1, "chatId"    # Ljava/lang/String;

    .line 1201
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    const/16 v2, 0xa

    invoke-direct {v0, v2, v1, p1}, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;-><init>(ILcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;Ljava/lang/String;)V

    .line 1204
    .local v0, "para":Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1205
    return-void
.end method

.method public downloadMessageJson(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .line 1318
    const/16 v0, 0x15

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1319
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 79
    invoke-super {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->handleMessage(Landroid/os/Message;)V

    .line 80
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 178
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->fetchingPendingMsg()V

    .line 179
    goto/16 :goto_0

    .line 117
    :pswitch_2
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->FetchingFail:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$DirectionFlag;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "syncDirection":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->appFetchingFailedMsg(Ljava/lang/String;)V

    .line 119
    goto/16 :goto_0

    .line 114
    .end local v0    # "syncDirection":Ljava/lang/String;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onUpdateFromDeviceMsgAppFetchFailed(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;)V

    .line 115
    goto/16 :goto_0

    .line 175
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleStopSync(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    .line 176
    goto/16 :goto_0

    .line 172
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleStartFullSync(Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;)V

    .line 173
    goto/16 :goto_0

    .line 169
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleReceivedGcm(Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;)V

    .line 170
    goto/16 :goto_0

    .line 164
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onBufferDBReadBatch(Ljava/lang/String;)V

    .line 165
    goto/16 :goto_0

    .line 158
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleBufferDbReadMessageJson(Ljava/lang/String;)V

    .line 159
    goto/16 :goto_0

    .line 161
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleWipeOutMessageJson(Ljava/lang/String;)V

    .line 162
    goto/16 :goto_0

    .line 155
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleDownloadMessageJson(Ljava/lang/String;)V

    .line 156
    goto/16 :goto_0

    .line 152
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleUploadMessageJson(Ljava/lang/String;)V

    .line 153
    goto/16 :goto_0

    .line 149
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleDeleteMessageJson(Ljava/lang/String;)V

    .line 150
    goto/16 :goto_0

    .line 146
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleUnReadMessageJson(Ljava/lang/String;)V

    .line 147
    goto/16 :goto_0

    .line 143
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleReadMessageJson(Ljava/lang/String;)V

    .line 144
    goto/16 :goto_0

    .line 140
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleSentMessageJson(Ljava/lang/String;)V

    .line 141
    goto :goto_0

    .line 137
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleReceivedMessageJson(Ljava/lang/String;)V

    .line 138
    goto :goto_0

    .line 134
    :pswitch_11
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onServiceRestarted()V

    .line 135
    goto :goto_0

    .line 131
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onLineDeactivated(Ljava/lang/String;)V

    .line 132
    goto :goto_0

    .line 128
    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onLineActivated(Ljava/lang/String;)V

    .line 129
    goto :goto_0

    .line 125
    :pswitch_14
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->handleRCSDbReady()V

    .line 126
    goto :goto_0

    .line 111
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onUpdateFromDeviceMsgAppFetch(Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;)V

    .line 112
    goto :goto_0

    .line 103
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;

    .line 104
    .local v0, "updateParam":Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;
    iget v1, v0, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;->mTableindex:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 105
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->onUpdateFromDeviceSessionPartcpts(Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;)V

    goto :goto_0

    .line 106
    :cond_0
    iget v1, v0, Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;->mTableindex:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 107
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mRcsScheduler:Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler;->onUpdateFromDeviceSession(Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;)V

    goto :goto_0

    .line 100
    .end local v0    # "updateParam":Lcom/sec/internal/ims/cmstore/params/DeviceSessionPartcptsUpdateParam;
    :pswitch_17
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onUpdateFromDeviceLegacy()V

    .line 101
    goto :goto_0

    .line 88
    :pswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 89
    .local v0, "ar_wksts":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onWorkingStatusChanged(Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;)V

    .line 91
    goto :goto_0

    .line 84
    .end local v0    # "ar_wksts":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 85
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onUpdateFromCloud(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 86
    goto :goto_0

    .line 93
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_1a
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->startInitialSyncDBCopyTask()V

    .line 94
    nop

    .line 183
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_0
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
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onBufferDBReadResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 18
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "bufferRowIDs"    # Ljava/lang/String;
    .param p3, "telephonyRowId"    # Ljava/lang/String;
    .param p4, "syncAction"    # I
    .param p5, "isSuccess"    # Z

    .line 1120
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p5

    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBufferDBReadResult "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p3

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const/4 v4, 0x0

    .line 1123
    .local v4, "dbIndex":I
    invoke-static/range {p4 .. p4}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object v5

    .line 1124
    .local v5, "msgResponse":Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    if-nez v5, :cond_0

    .line 1125
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal syncAction: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p4

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1124
    :cond_0
    move/from16 v15, p4

    .line 1127
    :goto_0
    if-nez v3, :cond_1

    .line 1128
    const-string v0, "0"

    move-object/from16 v16, v0

    .end local p3    # "telephonyRowId":Ljava/lang/String;
    .local v0, "telephonyRowId":Ljava/lang/String;
    goto :goto_1

    .line 1127
    .end local v0    # "telephonyRowId":Ljava/lang/String;
    .restart local p3    # "telephonyRowId":Ljava/lang/String;
    :cond_1
    move-object/from16 v16, v7

    .line 1131
    .end local p3    # "telephonyRowId":Ljava/lang/String;
    .local v16, "telephonyRowId":Ljava/lang/String;
    :goto_1
    const/4 v0, 0x0

    .line 1132
    .local v0, "para":Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;
    :try_start_0
    const-string v7, "MMS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1133
    const/4 v4, 0x4

    .line 1134
    new-instance v17, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;

    .line 1135
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v10, v7

    .line 1136
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v12, v7

    const/4 v14, 0x0

    move-object/from16 v7, v17

    move v8, v4

    move-object v9, v5

    invoke-direct/range {v7 .. v14}, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;-><init>(ILcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;JJZ)V

    move-object/from16 v0, v17

    goto/16 :goto_2

    .line 1137
    :cond_2
    const-string v7, "SMS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1138
    const/4 v4, 0x3

    .line 1139
    new-instance v17, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;

    .line 1140
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v10, v7

    .line 1141
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v12, v7

    const/4 v14, 0x0

    move-object/from16 v7, v17

    move v8, v4

    move-object v9, v5

    invoke-direct/range {v7 .. v14}, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;-><init>(ILcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;JJZ)V

    move-object/from16 v0, v17

    goto/16 :goto_2

    .line 1142
    :cond_3
    const-string v7, "FT"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1143
    const/4 v4, 0x1

    .line 1144
    new-instance v17, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;

    .line 1145
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v10, v7

    .line 1146
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v12, v7

    const/4 v14, 0x1

    move-object/from16 v7, v17

    move v8, v4

    move-object v9, v5

    invoke-direct/range {v7 .. v14}, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;-><init>(ILcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;JJZ)V

    move-object/from16 v0, v17

    goto/16 :goto_2

    .line 1147
    :cond_4
    const-string v7, "CHAT"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1148
    const/4 v4, 0x1

    .line 1149
    new-instance v17, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;

    .line 1150
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v10, v7

    .line 1151
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v12, v7

    const/4 v14, 0x0

    move-object/from16 v7, v17

    move v8, v4

    move-object v9, v5

    invoke-direct/range {v7 .. v14}, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;-><init>(ILcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;JJZ)V

    move-object/from16 v0, v17

    goto/16 :goto_2

    .line 1152
    :cond_5
    const-string v7, "FAX"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1153
    const/16 v4, 0x15

    .line 1154
    new-instance v17, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;

    .line 1155
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v10, v7

    .line 1156
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v12, v7

    const/4 v14, 0x0

    move-object/from16 v7, v17

    move v8, v4

    move-object v9, v5

    invoke-direct/range {v7 .. v14}, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;-><init>(ILcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;JJZ)V

    move-object/from16 v0, v17

    goto/16 :goto_2

    .line 1157
    :cond_6
    const-string v7, "CALLLOGDATA"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1158
    const/16 v4, 0x10

    .line 1159
    new-instance v17, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;

    .line 1160
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v10, v7

    .line 1161
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v12, v7

    const/4 v14, 0x0

    move-object/from16 v7, v17

    move v8, v4

    move-object v9, v5

    invoke-direct/range {v7 .. v14}, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;-><init>(ILcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;JJZ)V

    move-object/from16 v0, v17

    goto :goto_2

    .line 1162
    :cond_7
    const-string v7, "VVMDATA"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1163
    const/16 v4, 0x11

    .line 1164
    new-instance v17, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;

    .line 1165
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v10, v7

    .line 1166
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v12, v7

    const/4 v14, 0x0

    move-object/from16 v7, v17

    move v8, v4

    move-object v9, v5

    invoke-direct/range {v7 .. v14}, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;-><init>(ILcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;JJZ)V

    move-object/from16 v0, v17

    goto :goto_2

    .line 1167
    :cond_8
    const-string v7, "GREETING"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1168
    const/16 v4, 0x12

    .line 1169
    new-instance v17, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;

    .line 1170
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v10, v7

    .line 1171
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v12, v7

    const/4 v14, 0x0

    move-object/from16 v7, v17

    move v8, v4

    move-object v9, v5

    invoke-direct/range {v7 .. v14}, Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;-><init>(ILcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;JJZ)V

    move-object/from16 v0, v17

    .line 1176
    :goto_2
    if-eqz v3, :cond_9

    .line 1177
    const/16 v7, 0x8

    invoke-virtual {v1, v7, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 1179
    :cond_9
    const/16 v7, 0x1d

    invoke-virtual {v1, v7, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1183
    .end local v0    # "para":Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;
    :goto_3
    goto :goto_4

    .line 1173
    .restart local v0    # "para":Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;
    :cond_a
    sget-object v7, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onBufferDBReadResult wrong input type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1174
    return-void

    .line 1181
    .end local v0    # "para":Lcom/sec/internal/ims/cmstore/params/DeviceMsgAppFetchUpdateParam;
    :catch_0
    move-exception v0

    .line 1182
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1184
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_4
    return-void
.end method

.method public onGcmReceived(Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;)V
    .locals 3
    .param p1, "pushnotification"    # Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;

    .line 1269
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->isNativeMsgAppDefault()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1270
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->isMsgPushNotification(Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1271
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string v1, "onGcmReceived: msg app not default application - Ignore msg push notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    return-void

    .line 1275
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->isDelayProcessGcm(Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;)Z

    move-result v0

    const/16 v1, 0x1a

    if-eqz v0, :cond_1

    .line 1276
    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-wide v1, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->PUSH_SYNC_DELAY:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1278
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1280
    :goto_0
    return-void
.end method

.method public onNativeChannelReceived(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 2
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 1283
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->mDeviceDataChangeListener:Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;->isNativeMsgAppDefault()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1284
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string v1, "onNativeChannelReceived: msg app not default application - Ignore native channel notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    return-void

    .line 1287
    :cond_0
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1288
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1289
    return-void
.end method

.method public onRCSDbReady()V
    .locals 2

    .line 1111
    sget-object v0, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string v1, "onRCSDbReady()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1113
    return-void
.end method

.method public onReturnAppFetchingFailedMsg(Ljava/lang/String;)V
    .locals 2
    .param p1, "syncDirection"    # Ljava/lang/String;

    .line 1229
    const-string v0, "MessageApp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1230
    const/16 v0, 0x1e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1232
    :cond_0
    return-void
.end method

.method public readMessageJson(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;

    .line 1300
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldEnableNetAPIPutFlag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1301
    const/16 v0, 0x11

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1303
    :cond_0
    return-void
.end method

.method public receivedMessageJson(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .line 1292
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1293
    return-void
.end method

.method public resyncPendingMsg()V
    .locals 1

    .line 1353
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sendEmptyMessage(I)Z

    .line 1354
    return-void
.end method

.method public sentMessageJson(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .line 1296
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1297
    return-void
.end method

.method public startFullSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;

    .line 1331
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isAppTriggerMessageSearch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1332
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->StartFullSync:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object v0

    .line 1333
    .local v0, "list":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    if-nez v0, :cond_0

    .line 1334
    sget-object v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string v2, "error parsing startfullsync json value"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    return-void

    .line 1337
    :cond_0
    const/16 v1, 0x1b

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1339
    .end local v0    # "list":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    :cond_1
    return-void
.end method

.method public stopSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;

    .line 1342
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isAppTriggerMessageSearch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1343
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;->StopSync:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->decodeJson(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$MsgOperationFlag;)Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;

    move-result-object v0

    .line 1344
    .local v0, "list":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    if-nez v0, :cond_0

    .line 1345
    sget-object v1, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->TAG:Ljava/lang/String;

    const-string v2, "error parsing startfullsync json value"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    return-void

    .line 1348
    :cond_0
    const/16 v1, 0x1c

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1350
    .end local v0    # "list":Lcom/sec/internal/ims/cmstore/params/ParamAppJsonValueList;
    :cond_1
    return-void
.end method

.method public unReadMessageJson(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .line 1306
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1307
    return-void
.end method

.method public uploadMessageJson(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .line 1314
    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1315
    return-void
.end method

.method public wipeOutMessageJson(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;

    .line 1322
    const/16 v0, 0x16

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1323
    return-void
.end method
