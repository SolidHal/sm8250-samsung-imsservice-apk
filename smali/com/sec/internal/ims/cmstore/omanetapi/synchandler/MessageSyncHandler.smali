.class public Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;
.super Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
.source "MessageSyncHandler.java"


# static fields
.field public static final MAX_PAYLOAD_SIZE:I = 0x6400000

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

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

    .line 41
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 42
    iput-object p7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 43
    return-void
.end method

.method private getPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 4
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sec/internal/omanetapi/nms/data/Object;Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPairFromCursor param: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 160
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getSmsObjectPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_0
    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 162
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getMmsObjectPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_1
    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 164
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getRCSObjectPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_2
    iget v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3

    .line 166
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getImdnObjectPair(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object v0

    .line 168
    :cond_3
    :goto_0
    return-object v0
.end method

.method private setDownloadQueueInternal(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 3
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 193
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWorkingQueue :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method private setUploadQueueInternal(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 3
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 198
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUploadQueueInternal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method


# virtual methods
.method protected makeBulkUploadBody(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;
    .locals 4
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation

    .line 173
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeBulkUploadBody: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 175
    return-object v0

    .line 178
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->getPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object v1

    .line 180
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sec/internal/omanetapi/nms/data/Object;Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    if-eqz v1, :cond_3

    .line 181
    iget v2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 183
    return-object v0

    .line 184
    :cond_1
    iget v2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    if-eq v2, v3, :cond_3

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 186
    :cond_2
    return-object v0

    .line 189
    :cond_3
    return-object v1
.end method

.method protected makeBulkUploadparameter()V
    .locals 14

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "postBodySize":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Object;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v2, "postBodys":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getUserTelCtn()Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "telCtn":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMaxBulkDeleteEntry()I

    move-result v4

    .line 221
    .local v4, "maxEntryBulkUpload":I
    sget-object v5, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setBulkUploadQueue maxEntryBulkUpload: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " listsize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v5, 0x1

    if-gt v4, v5, :cond_0

    .line 224
    const/16 v4, 0x64

    .line 227
    :cond_0
    new-instance v5, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v5}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 228
    .local v5, "changeList":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    :goto_0
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 229
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 230
    .local v6, "changeParam":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    if-nez v6, :cond_1

    .line 231
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 232
    goto :goto_0

    .line 235
    :cond_1
    nop

    .line 236
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->makeBulkUploadBody(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object v7

    .line 237
    .local v7, "changePair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sec/internal/omanetapi/nms/data/Object;Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    if-nez v7, :cond_2

    .line 238
    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 239
    goto :goto_0

    .line 242
    :cond_2
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/sec/internal/omanetapi/nms/data/Object;

    .line 243
    .local v8, "obj":Lcom/sec/internal/omanetapi/nms/data/Object;
    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 245
    .local v9, "postBody":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    if-eqz v8, :cond_6

    if-nez v9, :cond_3

    goto :goto_1

    .line 250
    :cond_3
    int-to-long v10, v0

    invoke-virtual {v9}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getBodySize()J

    move-result-wide v12

    add-long/2addr v10, v12

    const-wide/32 v12, 0x6400000

    cmp-long v10, v10, v12

    if-lez v10, :cond_4

    .line 251
    goto :goto_2

    .line 253
    :cond_4
    int-to-long v10, v0

    invoke-virtual {v9}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getBodySize()J

    move-result-wide v12

    add-long/2addr v10, v12

    long-to-int v0, v10

    .line 254
    sget-object v10, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "postBodySize is: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v10, v5, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v10, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v10, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v10, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    invoke-interface {v10}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 259
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-lt v10, v4, :cond_5

    .line 260
    goto :goto_2

    .line 262
    .end local v6    # "changeParam":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .end local v7    # "changePair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sec/internal/omanetapi/nms/data/Object;Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    .end local v8    # "obj":Lcom/sec/internal/omanetapi/nms/data/Object;
    .end local v9    # "postBody":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    :cond_5
    goto :goto_0

    .line 246
    .restart local v6    # "changeParam":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .restart local v7    # "changePair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sec/internal/omanetapi/nms/data/Object;Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    .restart local v8    # "obj":Lcom/sec/internal/omanetapi/nms/data/Object;
    .restart local v9    # "postBody":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    :cond_6
    :goto_1
    iget-object v10, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    invoke-interface {v10}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 247
    goto/16 :goto_0

    .line 264
    .end local v6    # "changeParam":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .end local v7    # "changePair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sec/internal/omanetapi/nms/data/Object;Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    .end local v8    # "obj":Lcom/sec/internal/omanetapi/nms/data/Object;
    .end local v9    # "postBody":Lcom/sec/internal/helper/httpclient/HttpPostBody;
    :cond_7
    :goto_2
    iget-object v6, v5, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 265
    new-instance v6, Lcom/sec/internal/omanetapi/nms/data/ObjectList;

    invoke-direct {v6}, Lcom/sec/internal/omanetapi/nms/data/ObjectList;-><init>()V

    .line 266
    .local v6, "objList":Lcom/sec/internal/omanetapi/nms/data/ObjectList;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lcom/sec/internal/omanetapi/nms/data/Object;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/sec/internal/omanetapi/nms/data/Object;

    iput-object v7, v6, Lcom/sec/internal/omanetapi/nms/data/ObjectList;->object:[Lcom/sec/internal/omanetapi/nms/data/Object;

    .line 267
    new-instance v7, Landroid/util/Pair;

    invoke-direct {v7, v6, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 270
    .local v7, "uploadObjectInfo":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sec/internal/omanetapi/nms/data/ObjectList;Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;>;"
    new-instance v8, Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;

    invoke-direct {v8, v7, v5, v3}, Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;-><init>(Landroid/util/Pair;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mBulkCreation:Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;

    .line 271
    sget-object v8, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bulk upload count:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v6    # "objList":Lcom/sec/internal/omanetapi/nms/data/ObjectList;
    .end local v7    # "uploadObjectInfo":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sec/internal/omanetapi/nms/data/ObjectList;Ljava/util/List<Lcom/sec/internal/helper/httpclient/HttpPostBody;>;>;"
    :cond_8
    return-void
.end method

.method protected peekBulkUploadQueue()Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mBulkCreation:Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;

    if-nez v0, :cond_0

    .line 277
    const/4 v0, 0x0

    return-object v0

    .line 279
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkCreation;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mBulkCreation:Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkCreation;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    return-object v0
.end method

.method protected peekDownloadQueue()Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 10

    .line 56
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mWorkingDownloadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 57
    .local v0, "param":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "peekDownloadQueue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 59
    return-object v1

    .line 61
    :cond_0
    iget v2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 62
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 63
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getObjectIdPartIdFromMmsBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object v2

    .line 64
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 65
    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getPayloadPartUrlFromMmsBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/util/List;

    move-result-object v3

    .line 66
    .local v3, "payloadUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 68
    .local v4, "objId":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 69
    sget-object v5, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "peekDownloadQueue PDU Payload Part partUrl: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 74
    goto :goto_0

    :cond_1
    goto :goto_1

    .line 75
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 76
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "peekDownloadQueue PDU Object"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualObject;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v1, p0, v4, v0, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualObject;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    return-object v1

    .line 79
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "payloadUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "objId":Ljava/lang/String;
    :cond_3
    :goto_1
    goto/16 :goto_3

    :cond_4
    iget v2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    .line 80
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getPayloadPartUrlFromMmsPartUsingPartBufferId(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "payloadUrl":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "peekDownloadQueue part: payloadUrl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 84
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-static {p0, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;->buildFromPayloadUrl(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;

    move-result-object v1

    return-object v1

    .line 86
    .end local v2    # "payloadUrl":Ljava/lang/String;
    :cond_5
    goto/16 :goto_3

    :cond_6
    iget v2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 87
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 88
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getObjectIdPartIdFromRCSBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object v2

    .line 89
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    .line 90
    .local v4, "pairpayload":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mIsFTThumbnailDownload:Z

    if-eqz v5, :cond_7

    .line 91
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 92
    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getPayloadPartandAllPayloadUrlFromRCSBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object v3

    .line 93
    .end local v4    # "pairpayload":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .local v3, "pairpayload":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mIsFTThumbnailDownload:Z

    goto :goto_2

    .line 95
    .end local v3    # "pairpayload":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "pairpayload":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getAllPayloadUrlFromRCSBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object v4

    .line 97
    iget-boolean v5, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mIsFTThumbnail:Z

    if-eqz v5, :cond_8

    .line 98
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mIsFTThumbnailDownload:Z

    .line 100
    :cond_8
    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "param.mPayloadThumbnailUrl : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mPayloadThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mIsFTThumbnailDownload = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mIsFTThumbnailDownload:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 103
    .end local v4    # "pairpayload":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "pairpayload":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 104
    .local v4, "payloadpartUrl":Ljava/lang/String;
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 105
    .local v5, "payloadUrl":Ljava/lang/String;
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 106
    .local v6, "objId":Ljava/lang/String;
    sget-object v7, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "payloadpartUrl: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " payloadUrl: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " objId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-boolean v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mIsFTThumbnailDownload:Z

    if-eqz v7, :cond_9

    .line 108
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mPayloadThumbnailUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-static {p0, v1, v0, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;->buildFromPayloadUrl(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;

    move-result-object v1

    return-object v1

    .line 109
    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 110
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-static {p0, v4, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;->buildFromPayloadUrl(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;

    move-result-object v1

    return-object v1

    .line 111
    :cond_a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 112
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-static {p0, v5, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;->buildFromPayloadUrl(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

    move-result-object v1

    return-object v1

    .line 113
    :cond_b
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 114
    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualObject;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v1, p0, v6, v0, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualObject;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    return-object v1

    .line 116
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "pairpayload":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "payloadpartUrl":Ljava/lang/String;
    .end local v5    # "payloadUrl":Ljava/lang/String;
    .end local v6    # "objId":Ljava/lang/String;
    :cond_c
    goto :goto_3

    :cond_d
    iget v2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_e

    .line 117
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 118
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getVVMpayLoadUrlFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "payloadUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-static {p0, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;->buildFromPayloadUrl(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

    move-result-object v2

    .line 120
    .local v2, "httpParam":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    return-object v2

    .line 121
    .end local v1    # "payloadUrl":Ljava/lang/String;
    .end local v2    # "httpParam":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    :cond_e
    iget v2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_f

    .line 122
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 123
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getFaxpayLoadUrlFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .restart local v1    # "payloadUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-static {p0, v1, v0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;->buildFromPayloadUrl(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

    move-result-object v2

    .line 125
    .restart local v2    # "httpParam":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    return-object v2

    .line 127
    .end local v1    # "payloadUrl":Ljava/lang/String;
    .end local v2    # "httpParam":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    :cond_f
    :goto_3
    return-object v1
.end method

.method protected peekUploadQueue()Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 5

    .line 132
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mWorkingUploadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 133
    .local v0, "param":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "peekUploadQueue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 135
    return-object v1

    .line 138
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->getPairFromCursor(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object v2

    .line 140
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sec/internal/omanetapi/nms/data/Object;Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    if-eqz v2, :cond_4

    .line 141
    iget v3, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 143
    return-object v1

    .line 144
    :cond_1
    iget v3, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    if-eq v3, v4, :cond_3

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 146
    :cond_2
    return-object v1

    .line 149
    :cond_3
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;-><init>(Landroid/util/Pair;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    .line 150
    .local v1, "uploadparam":Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;
    new-instance v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateAllObjects;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v3, p0, v1, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateAllObjects;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    return-object v3

    .line 152
    .end local v1    # "uploadparam":Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;
    :cond_4
    return-object v1
.end method

.method protected setBulkUploadQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 3
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 203
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBulkUploadQueue param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 205
    .local v1, "changeParam":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    if-nez v1, :cond_0

    .line 206
    goto :goto_0

    .line 208
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->mBulkUploadQueue:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 209
    .end local v1    # "changeParam":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    goto :goto_0

    .line 210
    :cond_1
    return-void
.end method

.method protected setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V
    .locals 1
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .param p2, "syncoperation"    # Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    .line 47
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->setDownloadQueueInternal(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    goto :goto_0

    .line 49
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;->setUploadQueueInternal(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    .line 52
    :cond_1
    :goto_0
    return-void
.end method
