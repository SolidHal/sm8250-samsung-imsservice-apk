.class public Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/VvmSyncHandler;
.super Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
.source "VvmSyncHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/VvmSyncHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/VvmSyncHandler;->TAG:Ljava/lang/String;

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

    .line 23
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected makeBulkUploadparameter()V
    .locals 0

    .line 42
    return-void
.end method

.method protected peekBulkUploadQueue()Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 1

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method protected peekDownloadQueue()Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/VvmSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 58
    .local v0, "param":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 59
    return-object v1

    .line 61
    :cond_0
    iget v2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_1

    .line 62
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/VvmSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 63
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getVVMpayLoadUrlFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "payloadUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/VvmSyncHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-static {p0, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;->buildFromPayloadUrl(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

    move-result-object v2

    .line 65
    .local v2, "httpParam":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    return-object v2

    .line 68
    .end local v1    # "payloadUrl":Ljava/lang/String;
    .end local v2    # "httpParam":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/VvmSyncHandler;->TAG:Ljava/lang/String;

    const-string v3, "illegal message type from buffer DB"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-object v1
.end method

.method protected peekUploadQueue()Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 1

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method protected setBulkUploadQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 0
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 53
    return-void
.end method

.method protected setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V
    .locals 3
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .param p2, "syncParam"    # Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    .line 29
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/VvmSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/VvmSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWorkingQueue :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " setMsgDownloadQueue size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/VvmSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method
