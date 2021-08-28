.class public Lcom/sec/internal/ims/cmstore/CloudMessageService;
.super Landroid/app/Service;
.source "CloudMessageService.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mBufferDBHandlingThread:Landroid/os/HandlerThread;

.field private mCentralMsgStoreWrapper:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

.field private mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

.field mJanskyIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mJanskyTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

.field private mNetAPIHandlingThread:Landroid/os/HandlerThread;

.field private mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/sec/internal/ims/cmstore/CloudMessageService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    .line 49
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    .line 101
    new-instance v0, Lcom/sec/internal/ims/cmstore/CloudMessageService$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/CloudMessageService$1;-><init>(Lcom/sec/internal/ims/cmstore/CloudMessageService;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mJanskyIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/CloudMessageService;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/CloudMessageService;

    .line 45
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/cmstore/CloudMessageService;)Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/CloudMessageService;

    .line 45
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mJanskyTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    return-object v0
.end method

.method private getAMBSPhaseVersion(I)I
    .locals 9
    .param p1, "phoneid"    # I

    .line 241
    const/4 v0, 0x3

    .line 242
    .local v0, "phase":I
    sget-object v1, Lcom/sec/ims/settings/ImsSettings;->GLOBAL_CONTENT_URI:Landroid/net/Uri;

    .line 243
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simslot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 244
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v2, "rcs_phase_version"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 246
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_1

    .line 247
    nop

    .line 257
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_0
    return v0

    .line 248
    :cond_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_3

    .line 249
    nop

    .line 257
    if-eqz v2, :cond_2

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 249
    :cond_2
    return v0

    .line 252
    :cond_3
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 253
    const-string v3, "RCS_ATT_PHASE2"

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_4

    .line 254
    const/4 v0, 0x4

    .line 257
    :cond_4
    if-eqz v2, :cond_5

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    .line 259
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_5
    goto :goto_1

    .line 244
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_6

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "phase":I
    .end local v1    # "uri":Landroid/net/Uri;
    .end local p0    # "this":Lcom/sec/internal/ims/cmstore/CloudMessageService;
    .end local p1    # "phoneid":I
    :cond_6
    :goto_0
    throw v3
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0

    .line 257
    .end local v2    # "cursor":Landroid/database/Cursor;
    .restart local v0    # "phase":I
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local p0    # "this":Lcom/sec/internal/ims/cmstore/CloudMessageService;
    .restart local p1    # "phoneid":I
    :catch_0
    move-exception v2

    .line 258
    .local v2, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!!Could not get RCS_PHASE_VERSION from db "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_1
    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get RCS_PHASE_VERSION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return v0
.end method

.method private registerJanskyIntentReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.nsds.action.LINE_ACTIVATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v1, "com.samsung.nsds.action.LINE_DEACTIVATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v1, "com.samsung.nsds.action.SIM_DEVICE_ACTIVATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v1, "com.samsung.nsds.action.SIM_DEVICE_DEACTIVATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v1, "com.samsung.nsds.action.RECEIVED_PUSH_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "com.samsung.nsds.action.RECEIVED_GCM_EVENT_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "com.samsung.nsds.action.SIT_REFRESHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mJanskyIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    return-void
.end method


# virtual methods
.method public handleLargeDataPolling()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->handleLargeDataPolling()V

    .line 196
    return-void
.end method

.method public notifyAppCloudDeleteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "apptype"    # Ljava/lang/String;
    .param p2, "msgtype"    # Ljava/lang/String;
    .param p3, "rowIds"    # Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mCentralMsgStoreWrapper:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->notifyAppCloudDeleteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public notifyAppInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;)V
    .locals 1
    .param p1, "apptype"    # Ljava/lang/String;
    .param p2, "msgtype"    # Ljava/lang/String;
    .param p3, "line"    # Ljava/lang/String;
    .param p4, "SyncStatus"    # Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mCentralMsgStoreWrapper:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->notifyAppInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;)V

    .line 138
    return-void
.end method

.method public notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "apptype"    # Ljava/lang/String;
    .param p2, "msgtype"    # Ljava/lang/String;
    .param p3, "rowIDs"    # Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mCentralMsgStoreWrapper:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public notifyUIScreen(ILjava/lang/String;I)V
    .locals 1
    .param p1, "screenName"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "param"    # I

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mCentralMsgStoreWrapper:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->notifyUIScreen(ILjava/lang/String;I)V

    .line 148
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "arg0"    # Landroid/content/Intent;

    .line 57
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onBind():"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mCentralMsgStoreWrapper:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->getBinder()Lcom/sec/ims/ICentralMsgStoreService$Stub;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 9

    .line 63
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 64
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getAMBSPhaseVersion(I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->setAmbsPhaseVersion(I)V

    .line 66
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cloud message service buffer DB thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mBufferDBHandlingThread:Landroid/os/HandlerThread;

    .line 67
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cloud message service NetAPI thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mNetAPIHandlingThread:Landroid/os/HandlerThread;

    .line 68
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mBufferDBHandlingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mNetAPIHandlingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 70
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mBufferDBHandlingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 71
    .local v0, "bufferDBLooper":Landroid/os/Looper;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mNetAPIHandlingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    .line 73
    .local v7, "netAPILooper":Landroid/os/Looper;
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->init(Landroid/content/Context;)V

    .line 75
    new-instance v1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    .line 76
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/cmstore/RetryStackAdapterHelper;

    invoke-direct {v3}, Lcom/sec/internal/ims/cmstore/RetryStackAdapterHelper;-><init>()V

    invoke-direct {v1, v7, v2, p0, v3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    .line 77
    new-instance v8, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    .line 78
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    new-instance v6, Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;

    invoke-direct {v6}, Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;-><init>()V

    move-object v1, v8

    move-object v2, v0

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;Lcom/sec/internal/interfaces/ims/cmstore/IBufferDBEventListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object v8, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    .line 79
    new-instance v1, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/cmstore/CloudMessageService;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mJanskyTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    .line 80
    new-instance v1, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mJanskyTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    new-instance v5, Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;

    invoke-direct {v5}, Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;-><init>()V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;-><init>(Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mCentralMsgStoreWrapper:Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    .line 82
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->registerJanskyIntentReceiver(Landroid/content/Context;)V

    .line 85
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->resyncPendingMsg()V

    .line 87
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 266
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 267
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mBufferDBHandlingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 268
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mNetAPIHandlingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 269
    return-void
.end method

.method public onGcmReceived(Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;)V
    .locals 3
    .param p1, "pushnotification"    # Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;

    .line 171
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGcmReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cmsenabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    .line 172
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onGcmReceived(Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;)V

    .line 176
    :cond_0
    return-void
.end method

.method public onJanskySITTokenUpdated(Ljava/lang/String;)V
    .locals 1
    .param p1, "line"    # Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onDeviceSITRefreshed(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public onMStoreDisabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "msisdn"    # Ljava/lang/String;

    .line 163
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMStoreDisabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", cmsenabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    .line 164
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->deActivateLine(Ljava/lang/String;)V

    .line 168
    :cond_0
    return-void
.end method

.method public onMStoreEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "msisdn"    # Ljava/lang/String;

    .line 155
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMStoreEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", cmsenabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    .line 156
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->activateLine(Ljava/lang/String;)V

    .line 160
    :cond_0
    return-void
.end method

.method public onNativeChannelReceived(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 3
    .param p1, "para"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 179
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNativeChannelReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cmsenabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    .line 180
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;->onNativeChannelReceived(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 184
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 117
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartCommand(): Received start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public removeUpdateSubscriptionChannelEvent()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->removeUpdateSubscriptionChannelEvent()V

    .line 192
    return-void
.end method

.method public showInitsyncIndicator(Z)V
    .locals 12
    .param p1, "isShow"    # Z

    .line 201
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getIsInitSyncIndicatorRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showInitsyncIndicator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v0, 0x1

    .line 205
    .local v0, "notifyId":I
    const-string v1, "Messages Backup & Sync"

    .line 206
    .local v1, "AMBS_NAME":Ljava/lang/String;
    const-string v2, "Messages syncing..."

    .line 207
    .local v2, "MSG_SYNCING":Ljava/lang/String;
    const-string v3, "ambs_channel"

    .line 208
    .local v3, "PRIMARY_CHANNEL":Ljava/lang/String;
    const-string v4, "ambs_channel_ni"

    .line 210
    .local v4, "DEFAULT_CHANNEL_NAME":Ljava/lang/String;
    nop

    .line 211
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 213
    .local v5, "notifyManager":Landroid/app/NotificationManager;
    if-nez v5, :cond_0

    .line 214
    sget-object v6, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    const-string v7, "mNotifyManager is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void

    .line 217
    :cond_0
    new-instance v6, Landroid/app/NotificationChannel;

    const/4 v7, 0x2

    const-string v8, "ambs_channel"

    const-string v9, "ambs_channel_ni"

    invoke-direct {v6, v8, v9, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 219
    .local v6, "channel":Landroid/app/NotificationChannel;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 220
    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 221
    new-instance v9, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v8, v9

    .line 224
    .local v8, "notiBuilder":Landroid/app/Notification$Builder;
    const/4 v9, 0x1

    if-eqz p1, :cond_1

    .line 225
    sget-object v10, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    const-string v11, "init sync will be displayed"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v10, "Messages Backup & Sync"

    invoke-virtual {v8, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 227
    const-string v11, "Messages syncing..."

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    const v11, 0x108005f

    .line 228
    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 229
    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 230
    invoke-virtual {v10, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 231
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v5, v9, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {v5, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 235
    .end local v0    # "notifyId":I
    .end local v1    # "AMBS_NAME":Ljava/lang/String;
    .end local v2    # "MSG_SYNCING":Ljava/lang/String;
    .end local v3    # "PRIMARY_CHANNEL":Ljava/lang/String;
    .end local v4    # "DEFAULT_CHANNEL_NAME":Ljava/lang/String;
    .end local v5    # "notifyManager":Landroid/app/NotificationManager;
    .end local v6    # "channel":Landroid/app/NotificationChannel;
    .end local v8    # "notiBuilder":Landroid/app/Notification$Builder;
    :goto_0
    goto :goto_1

    .line 236
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "showInitsyncIndicator: not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_1
    return-void
.end method

.method public updateSubscriptionChannel()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->updateSubscriptionChannel()V

    .line 188
    return-void
.end method
