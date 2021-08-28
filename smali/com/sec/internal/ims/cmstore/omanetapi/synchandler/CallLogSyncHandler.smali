.class public Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/CallLogSyncHandler;
.super Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
.source "CallLogSyncHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/CallLogSyncHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/CallLogSyncHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "APIEventListener"    # Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;
    .param p4, "uicallback"    # Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;
    .param p5, "line"    # Ljava/lang/String;
    .param p6, "type"    # Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    .param p7, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 22
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected makeBulkUploadparameter()V
    .locals 0

    .line 56
    return-void
.end method

.method protected peekBulkUploadQueue()Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 1

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method protected peekDownloadQueue()Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 1

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method protected peekUploadQueue()Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 1

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method protected setBulkUploadQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 0
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 51
    return-void
.end method

.method protected setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V
    .locals 3
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .param p2, "syncParam"    # Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    .line 27
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/CallLogSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWorkingQueue :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " setMsgDownloadQueue size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/CallLogSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method
