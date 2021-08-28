.class public Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;
.super Ljava/lang/Object;
.source "CentralMsgStoreInterface.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mBinder:Lcom/sec/ims/ICentralMsgStoreService$Stub;

.field private mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

.field private mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

.field private mJanskyIntentTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

.field private mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 1
    .param p1, "scheduler"    # Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;
    .param p2, "netAPIcontroller"    # Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;
    .param p3, "janskytranslation"    # Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;
    .param p4, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    .line 23
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mBinder:Lcom/sec/ims/ICentralMsgStoreService$Stub;

    .line 32
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    .line 33
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    .line 34
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mJanskyIntentTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    .line 35
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 36
    new-instance v0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface$1;-><init>(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mBinder:Lcom/sec/ims/ICentralMsgStoreService$Stub;

    .line 362
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;
    .param p1, "x1"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->isValidAppType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    .line 17
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    .line 17
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mCloudMessageScheduler:Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    .line 17
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->logInvalidAppType()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;)Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    .line 17
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    return-object v0
.end method

.method private isValidAppType(Ljava/lang/String;)Z
    .locals 2
    .param p1, "appType"    # Ljava/lang/String;

    .line 407
    const-string v0, "MessageApp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 408
    return v1

    .line 409
    :cond_0
    const-string v0, "VVMDATA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    return v1

    .line 412
    :cond_1
    const-string v0, "CALLLOGDATA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    return v1

    .line 415
    :cond_2
    const-string v0, "RCSDATA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 417
    return v1

    .line 419
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private logInvalidAppType()V
    .locals 2

    .line 27
    sget-object v0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->LOG_TAG:Ljava/lang/String;

    const-string v1, "invalid apptype "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getBinder()Lcom/sec/ims/ICentralMsgStoreService$Stub;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mBinder:Lcom/sec/ims/ICentralMsgStoreService$Stub;

    return-object v0
.end method

.method public notifyAppCloudDeleteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "msgType"    # Ljava/lang/String;
    .param p3, "rowIDs"    # Ljava/lang/String;

    .line 395
    sget-object v0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAppCloudDeleteFail, type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " msgtype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bufferId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v0, "MessageApp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mJanskyIntentTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageAppCloudDeleteFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_0
    const-string v0, "VVMDATA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mJanskyIntentTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyVVMAppCloudDeleteFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :cond_1
    const-string v0, "CALLLOGDATA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mJanskyIntentTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyContactAppCloudDeleteFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_2
    :goto_0
    return-void
.end method

.method public notifyAppInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "messageType"    # Ljava/lang/String;
    .param p3, "line"    # Ljava/lang/String;
    .param p4, "SyncStatus"    # Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;

    .line 373
    sget-object v0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAppInitialSyncStatus, apptype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " msgType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " SyncStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v0, "MessageApp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mJanskyIntentTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {v0, p3, p2, p4}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageAppInitialSyncStatus(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$InitialSyncStatusFlag;)V

    .line 380
    :cond_0
    return-void
.end method

.method public notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appType"    # Ljava/lang/String;
    .param p2, "messageType"    # Ljava/lang/String;
    .param p3, "rowIDs"    # Ljava/lang/String;

    .line 383
    sget-object v0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCloudMessageUpdate, apptype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " msgType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rowIDs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v0, "MessageApp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mJanskyIntentTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageApp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_0
    const-string v0, "VVMDATA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mJanskyIntentTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyVVMApp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_1
    const-string v0, "CALLLOGDATA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mJanskyIntentTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyContactApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_2
    :goto_0
    return-void
.end method

.method public notifyUIScreen(ILjava/lang/String;I)V
    .locals 3
    .param p1, "screenName"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "param"    # I

    .line 365
    sget-object v0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyUIScreen, screenName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    sget-object v0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyUIScreen, message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->mJanskyIntentTranslation:Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyMessageAppUI(ILjava/lang/String;I)V

    .line 369
    return-void
.end method
