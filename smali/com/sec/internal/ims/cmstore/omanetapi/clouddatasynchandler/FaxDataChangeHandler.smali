.class public Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/FaxDataChangeHandler;
.super Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;
.source "FaxDataChangeHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/FaxDataChangeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/FaxDataChangeHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 0
    .param p1, "mLooper"    # Landroid/os/Looper;
    .param p2, "mContext"    # Landroid/content/Context;
    .param p3, "mINetAPIEventListener"    # Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;
    .param p4, "mUIInterface"    # Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;
    .param p5, "line"    # Ljava/lang/String;
    .param p6, "fax"    # Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    .param p7, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 25
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 26
    return-void
.end method


# virtual methods
.method public setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 5
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 31
    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    .line 32
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/FaxDataChangeHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getFaxObjectIdFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "objectId":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/FaxDataChangeHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getFaxpayLoadUrlFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "payloadUrl":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/FaxDataChangeHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadNextMsgFromQueueObject: objectId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " payloadUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/FaxDataChangeHandler;->mWorkingQueue:Ljava/util/Queue;

    new-instance v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualObject;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/FaxDataChangeHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v3, p0, v0, p1, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualObject;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/FaxDataChangeHandler;->mWorkingQueue:Ljava/util/Queue;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/FaxDataChangeHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-static {p0, v1, p1, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;->buildFromPayloadUrl(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    .end local v0    # "objectId":Ljava/lang/String;
    .end local v1    # "payloadUrl":Ljava/lang/String;
    :cond_1
    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 41
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/FaxDataChangeHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getSummaryObjectIdFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .restart local v0    # "objectId":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/FaxDataChangeHandler;->mWorkingQueue:Ljava/util/Queue;

    new-instance v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualObject;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/FaxDataChangeHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v2, p0, v0, p1, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualObject;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    .line 40
    .end local v0    # "objectId":Ljava/lang/String;
    :cond_2
    :goto_0
    nop

    .line 44
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/FaxDataChangeHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMsgDownloadQueue size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/FaxDataChangeHandler;->mWorkingQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method
