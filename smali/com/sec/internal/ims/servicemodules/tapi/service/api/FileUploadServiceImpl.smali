.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;
.super Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;
.source "FileUploadServiceImpl.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;
.implements Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/IRegistrationStatusBroadcaster;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

.field private mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

.field private mLock:Ljava/lang/Object;

.field private mMaxUploadCnt:I

.field private final mServiceListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUploadListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/gsma/services/rcs/upload/IFileUploadListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadTasks:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/gsma/services/rcs/upload/IFileUpload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lcom/gsma/services/rcs/upload/FileUploadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 103
    invoke-direct {p0}, Lcom/gsma/services/rcs/upload/IFileUploadService$Stub;-><init>()V

    .line 59
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mUploadListeners:Landroid/os/RemoteCallbackList;

    .line 76
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mUploadTasks:Ljava/util/Hashtable;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mMaxUploadCnt:I

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mContext:Landroid/content/Context;

    .line 93
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 98
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 104
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 106
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig()Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 107
    return-void
.end method

.method private addFileUploadTask(Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadImpl;)V
    .locals 2
    .param p1, "task"    # Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadImpl;

    .line 236
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mUploadTasks:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadImpl;->getUploadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    return-void
.end method

.method private broadcastFileUploadComplete(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUploadInfo;)V
    .locals 3
    .param p1, "uploadId"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/gsma/services/rcs/upload/FileUploadInfo;

    .line 320
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mUploadListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 321
    .local v0, "listenerCnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 323
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mUploadListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/upload/IFileUploadListener;

    invoke-interface {v2, p1, p2}, Lcom/gsma/services/rcs/upload/IFileUploadListener;->onUploaded(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUploadInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    goto :goto_1

    .line 324
    :catch_0
    move-exception v2

    .line 325
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 321
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mUploadListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 329
    return-void
.end method

.method private broadcastFileUploadProgress(Ljava/lang/String;JJ)V
    .locals 9
    .param p1, "uploadId"    # Ljava/lang/String;
    .param p2, "currentSize"    # J
    .param p4, "totalSize"    # J

    .line 301
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mUploadListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 302
    .local v0, "listenerCnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 304
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mUploadListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/gsma/services/rcs/upload/IFileUploadListener;

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-interface/range {v3 .. v8}, Lcom/gsma/services/rcs/upload/IFileUploadListener;->onProgressUpdate(Ljava/lang/String;JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    goto :goto_1

    .line 306
    :catch_0
    move-exception v2

    .line 307
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 302
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mUploadListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 311
    return-void
.end method

.method private broadcastFileUploadStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUpload$State;)V
    .locals 3
    .param p1, "uploadId"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/gsma/services/rcs/upload/FileUpload$State;

    .line 282
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mUploadListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 283
    .local v0, "listenerCnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 285
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mUploadListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/upload/IFileUploadListener;

    invoke-interface {v2, p1, p2}, Lcom/gsma/services/rcs/upload/IFileUploadListener;->onStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUpload$State;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    goto :goto_1

    .line 286
    :catch_0
    move-exception v2

    .line 287
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 283
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mUploadListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 291
    return-void
.end method

.method private removeFileUploadTask(Ljava/lang/String;)V
    .locals 1
    .param p1, "uploadId"    # Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mUploadTasks:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 410
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 411
    monitor-exit v0

    .line 412
    return-void

    .line 411
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addFileUploadEventListener(Lcom/gsma/services/rcs/upload/IFileUploadListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/upload/IFileUploadListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mUploadListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 258
    monitor-exit v0

    .line 259
    return-void

    .line 258
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public canUploadFile()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 196
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mMaxUploadCnt:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mUploadTasks:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mMaxUploadCnt:I

    if-lt v0, v1, :cond_0

    .line 197
    const/4 v0, 0x0

    return v0

    .line 199
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getMaxSizeExtraFileTr()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 118
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getMaxSizeFileTr()J

    move-result-wide v2

    .line 117
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 120
    .local v0, "MaxSizeFileTr":J
    new-instance v2, Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration;

    invoke-direct {v2, v0, v1}, Lcom/gsma/services/rcs/upload/FileUploadServiceConfiguration;-><init>(J)V

    return-object v2
.end method

.method public getFileUpload(Ljava/lang/String;)Lcom/gsma/services/rcs/upload/IFileUpload;
    .locals 1
    .param p1, "uploadId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mUploadTasks:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/upload/IFileUpload;

    return-object v0
.end method

.method public getFileUploads()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mUploadTasks:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 212
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mUploadTasks:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/gsma/services/rcs/upload/IFileUpload;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/upload/IFileUpload;

    .line 214
    .local v2, "sessionApi":Lcom/gsma/services/rcs/upload/IFileUpload;
    invoke-interface {v2}, Lcom/gsma/services/rcs/upload/IFileUpload;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .end local v2    # "sessionApi":Lcom/gsma/services/rcs/upload/IFileUpload;
    goto :goto_0

    .line 216
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/gsma/services/rcs/upload/IFileUpload;>;"
    :cond_0
    return-object v0
.end method

.method public getServiceVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 464
    const/4 v0, 0x2

    return v0
.end method

.method public isServiceRegistered()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 389
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 390
    .local v0, "manager":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    array-length v2, v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig()Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtDefaultMech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;->HTTP:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    if-ne v2, v3, :cond_1

    .line 395
    const/4 v1, 0x1

    return v1

    .line 397
    :cond_1
    return v1

    .line 391
    :cond_2
    :goto_0
    return v1
.end method

.method public notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    .locals 7
    .param p1, "registered"    # Z
    .param p2, "code"    # Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    .line 438
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 442
    if-eqz p1, :cond_0

    .line 443
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceRegistered()V

    goto :goto_1

    .line 445
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3, p2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceUnregistered(Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    :goto_1
    goto :goto_2

    .line 447
    :catch_0
    move-exception v3

    .line 448
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 449
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t notify listener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 452
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 453
    .end local v1    # "N":I
    monitor-exit v0

    .line 454
    return-void

    .line 453
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onUploadComplete(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUploadInfo;)V
    .locals 2
    .param p1, "uploadId"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/gsma/services/rcs/upload/FileUploadInfo;

    .line 375
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 377
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->broadcastFileUploadComplete(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUploadInfo;)V

    .line 378
    monitor-exit v0

    .line 379
    return-void

    .line 378
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUploadProgress(Ljava/lang/String;JJ)V
    .locals 2
    .param p1, "uploadId"    # Ljava/lang/String;
    .param p2, "currentSize"    # J
    .param p4, "totalSize"    # J

    .line 360
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->broadcastFileUploadProgress(Ljava/lang/String;JJ)V

    .line 363
    monitor-exit v0

    .line 364
    return-void

    .line 363
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUploadStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUpload$State;Z)V
    .locals 2
    .param p1, "uploadId"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/gsma/services/rcs/upload/FileUpload$State;
    .param p3, "finished"    # Z

    .line 340
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->broadcastFileUploadStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUpload$State;)V

    .line 345
    if-eqz p3, :cond_0

    .line 346
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->removeFileUploadTask(Ljava/lang/String;)V

    .line 348
    :cond_0
    monitor-exit v0

    .line 349
    return-void

    .line 348
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 424
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 425
    monitor-exit v0

    .line 426
    return-void

    .line 425
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeFileUploadEventListener(Lcom/gsma/services/rcs/upload/IFileUploadListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/upload/IFileUploadListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mUploadListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 272
    monitor-exit v0

    .line 273
    return-void

    .line 272
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public uploadFile(Landroid/net/Uri;Z)Lcom/gsma/services/rcs/upload/IFileUpload;
    .locals 19
    .param p1, "fileUri"    # Landroid/net/Uri;
    .param p2, "fileicon"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 135
    move-object/from16 v0, p0

    move-object/from16 v11, p1

    const/4 v12, 0x0

    .line 138
    .local v12, "fuImpl":Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadImpl;
    if-eqz v11, :cond_6

    .line 144
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v13

    .line 147
    .local v13, "phoneId":I
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v1, v13}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 150
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpCsUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 156
    iget v1, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mMaxUploadCnt:I

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mUploadTasks:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mMaxUploadCnt:I

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Max file transfer tasks achieved!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string v2, "Max file transfer tasks achieved"

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v11}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/FileUtils;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v14

    .line 163
    .local v14, "filePath":Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 169
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v15, v1

    .line 170
    .local v15, "file":Ljava/io/File;
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getMaxSizeExtraFileTr()J

    move-result-wide v1

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 171
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getMaxSizeFileTr()J

    move-result-wide v3

    .line 170
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    .line 173
    .local v16, "MaxSizeFileTr":J
    const-wide/16 v1, 0x0

    cmp-long v1, v16, v1

    if-eqz v1, :cond_3

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v1, v1, v16

    if-gtz v1, :cond_2

    goto :goto_1

    .line 174
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Max file size exceeds!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string v2, "Max file size exceeds"

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_3
    :goto_1
    new-instance v18, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 180
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v8

    move-object/from16 v1, v18

    move v2, v13

    move-object/from16 v5, p1

    move-object v6, v14

    move/from16 v10, p2

    invoke-direct/range {v1 .. v10}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;-><init>(ILcom/sec/internal/ims/servicemodules/im/ImConfig;Landroid/os/Looper;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 181
    .local v1, "fuMessage":Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;
    new-instance v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadImpl;

    invoke-direct {v2, v1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadImpl;-><init>(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;)V

    .line 182
    .end local v12    # "fuImpl":Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadImpl;
    .local v2, "fuImpl":Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadImpl;
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->addFileUploadTask(Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadImpl;)V

    .line 183
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadImpl;->startUpload()V

    .line 185
    return-object v2

    .line 164
    .end local v1    # "fuMessage":Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;
    .end local v2    # "fuImpl":Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadImpl;
    .end local v15    # "file":Ljava/io/File;
    .end local v16    # "MaxSizeFileTr":J
    .restart local v12    # "fuImpl":Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadImpl;
    :cond_4
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t retrieve file path from uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    .end local v14    # "filePath":Ljava/lang/String;
    :cond_5
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Can\'t find proper http content server."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    .end local v13    # "phoneId":I
    :cond_6
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Invalid file uri!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string v2, "Invalid file uri"

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
