.class public Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;
.super Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;
.source "OMAObjectUpdateScheduler.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "APIEventListener"    # Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;
    .param p4, "line"    # Ljava/lang/String;
    .param p5, "type"    # Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    .param p6, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 38
    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 39
    iput-object p6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 40
    return-void
.end method

.method private processBulkDelete(Ljava/util/List;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 19
    .param p2, "paramList"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/omanetapi/nms/data/Reference;",
            ">;",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;",
            ")V"
        }
    .end annotation

    .line 145
    .local p1, "referenceList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    if-eqz v8, :cond_5

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5

    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isBulkDeleteEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 148
    :cond_0
    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMaxBulkDeleteEntry()I

    move-result v0

    .line 149
    .local v0, "maxEntryBulkDelete":I
    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMaxBulkDeleteEntry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " listsize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-gt v0, v1, :cond_1

    .line 152
    const/16 v0, 0x64

    move v9, v0

    goto :goto_0

    .line 150
    :cond_1
    move v9, v0

    .line 154
    .end local v0    # "maxEntryBulkDelete":I
    .local v9, "maxEntryBulkDelete":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr v0, v9

    if-nez v0, :cond_2

    .line 155
    nop

    .line 154
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v0, v9

    goto :goto_1

    .line 155
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v0, v9

    add-int/2addr v0, v1

    :goto_1
    move v10, v0

    .line 156
    .local v10, "round":I
    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_2
    if-ge v11, v10, :cond_4

    .line 157
    mul-int v12, v11, v9

    .line 158
    .local v12, "start":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v11, 0x1

    mul-int/2addr v1, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 159
    .local v13, "end":I
    invoke-interface {v8, v12, v13}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v14

    .line 160
    .local v14, "referenceList_split":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    move-object v15, v0

    .line 161
    .local v15, "paramList_split":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v6, p2

    iget-object v1, v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1, v12, v13}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v15, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    .line 162
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start, End: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newlistsize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v7, v14}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->createNewBulkDeleteParam(Ljava/util/List;)Lcom/sec/internal/omanetapi/nms/data/BulkDelete;

    move-result-object v5

    .line 164
    .local v5, "bulkdelete":Lcom/sec/internal/omanetapi/nms/data/BulkDelete;
    iget-object v0, v5, Lcom/sec/internal/omanetapi/nms/data/BulkDelete;->objects:Lcom/sec/internal/omanetapi/nms/data/ObjectReferenceList;

    iget-object v0, v0, Lcom/sec/internal/omanetapi/nms/data/ObjectReferenceList;->objectReference:[Lcom/sec/internal/omanetapi/nms/data/Reference;

    if-eqz v0, :cond_3

    iget-object v0, v5, Lcom/sec/internal/omanetapi/nms/data/BulkDelete;->objects:Lcom/sec/internal/omanetapi/nms/data/ObjectReferenceList;

    iget-object v0, v0, Lcom/sec/internal/omanetapi/nms/data/ObjectReferenceList;->objectReference:[Lcom/sec/internal/omanetapi/nms/data/Reference;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 165
    iget-object v4, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mWorkingQueue:Ljava/util/Queue;

    new-instance v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;

    iget-object v2, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mLine:Ljava/lang/String;

    iget-object v1, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object/from16 v16, v0

    move-object v0, v3

    move-object/from16 v17, v1

    move-object/from16 v1, p0

    move-object/from16 v18, v2

    move-object v2, v5

    move-object v7, v3

    move-object/from16 v3, v18

    move-object v8, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v5

    .end local v5    # "bulkdelete":Lcom/sec/internal/omanetapi/nms/data/BulkDelete;
    .local v17, "bulkdelete":Lcom/sec/internal/omanetapi/nms/data/BulkDelete;
    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkDeletion;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/omanetapi/nms/data/BulkDelete;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-interface {v8, v7}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_3

    .line 164
    .end local v17    # "bulkdelete":Lcom/sec/internal/omanetapi/nms/data/BulkDelete;
    .restart local v5    # "bulkdelete":Lcom/sec/internal/omanetapi/nms/data/BulkDelete;
    :cond_3
    move-object/from16 v17, v5

    .line 156
    .end local v5    # "bulkdelete":Lcom/sec/internal/omanetapi/nms/data/BulkDelete;
    .end local v12    # "start":I
    .end local v13    # "end":I
    .end local v14    # "referenceList_split":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    .end local v15    # "paramList_split":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    :goto_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    goto/16 :goto_2

    .line 169
    .end local v11    # "i":I
    :cond_4
    return-void

    .line 146
    .end local v9    # "maxEntryBulkDelete":I
    .end local v10    # "round":I
    :cond_5
    :goto_4
    return-void
.end method

.method private processBulkSetRead(Ljava/util/List;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 19
    .param p2, "paramList"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/omanetapi/nms/data/Reference;",
            ">;",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;",
            ")V"
        }
    .end annotation

    .line 172
    .local p1, "referenceList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    if-eqz v8, :cond_5

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5

    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isBulkUpdateEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 176
    :cond_0
    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMaxBulkDeleteEntry()I

    move-result v0

    .line 177
    .local v0, "maxEntryBulkRead":I
    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processBulkSetRead: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " listsize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    if-gt v0, v1, :cond_1

    .line 180
    const/16 v0, 0x64

    move v9, v0

    goto :goto_0

    .line 178
    :cond_1
    move v9, v0

    .line 182
    .end local v0    # "maxEntryBulkRead":I
    .local v9, "maxEntryBulkRead":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr v0, v9

    if-nez v0, :cond_2

    .line 183
    nop

    .line 182
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v0, v9

    goto :goto_1

    .line 183
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v0, v9

    add-int/2addr v0, v1

    :goto_1
    move v10, v0

    .line 184
    .local v10, "round":I
    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_2
    if-ge v11, v10, :cond_4

    .line 185
    mul-int v12, v11, v9

    .line 186
    .local v12, "start":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v11, 0x1

    mul-int/2addr v1, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 187
    .local v13, "end":I
    invoke-interface {v8, v12, v13}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v14

    .line 188
    .local v14, "referenceList_split":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    move-object v15, v0

    .line 189
    .local v15, "paramList_split":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v6, p2

    iget-object v1, v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1, v12, v13}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v15, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    .line 190
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start, End: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newlistsize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v0, "\\Seen"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;->AddFlag:Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;

    invoke-virtual {v7, v14, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->createNewBulkUpdateParam(Ljava/util/List;[Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;)Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;

    move-result-object v5

    .line 192
    .local v5, "bulkread":Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;
    iget-object v0, v5, Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;->objects:Lcom/sec/internal/omanetapi/nms/data/ObjectReferenceList;

    iget-object v0, v0, Lcom/sec/internal/omanetapi/nms/data/ObjectReferenceList;->objectReference:[Lcom/sec/internal/omanetapi/nms/data/Reference;

    if-eqz v0, :cond_3

    iget-object v0, v5, Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;->objects:Lcom/sec/internal/omanetapi/nms/data/ObjectReferenceList;

    iget-object v0, v0, Lcom/sec/internal/omanetapi/nms/data/ObjectReferenceList;->objectReference:[Lcom/sec/internal/omanetapi/nms/data/Reference;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 193
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "send bulk update"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v4, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mWorkingQueue:Ljava/util/Queue;

    new-instance v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkUpdate;

    iget-object v2, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mLine:Ljava/lang/String;

    iget-object v1, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object/from16 v16, v0

    move-object v0, v3

    move-object/from16 v17, v1

    move-object/from16 v1, p0

    move-object/from16 v18, v2

    move-object v2, v5

    move-object v7, v3

    move-object/from16 v3, v18

    move-object v8, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v5

    .end local v5    # "bulkread":Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;
    .local v17, "bulkread":Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;
    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkUpdate;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-interface {v8, v7}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_3

    .line 192
    .end local v17    # "bulkread":Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;
    .restart local v5    # "bulkread":Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;
    :cond_3
    move-object/from16 v17, v5

    .line 184
    .end local v5    # "bulkread":Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;
    .end local v12    # "start":I
    .end local v13    # "end":I
    .end local v14    # "referenceList_split":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    .end local v15    # "paramList_split":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    :goto_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    goto/16 :goto_2

    .line 197
    .end local v11    # "i":I
    :cond_4
    return-void

    .line 173
    .end local v9    # "maxEntryBulkRead":I
    .end local v10    # "round":I
    :cond_5
    :goto_4
    return-void
.end method

.method private processBulkSetUnRead(Ljava/util/List;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 19
    .param p2, "paramList"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/omanetapi/nms/data/Reference;",
            ">;",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;",
            ")V"
        }
    .end annotation

    .line 200
    .local p1, "referenceList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    if-eqz v8, :cond_5

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5

    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isBulkUpdateEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 204
    :cond_0
    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMaxBulkDeleteEntry()I

    move-result v0

    .line 205
    .local v0, "maxEntryBulkUnRead":I
    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processBulkSetUnRead: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " listsize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    if-gt v0, v1, :cond_1

    .line 208
    const/16 v0, 0x64

    move v9, v0

    goto :goto_0

    .line 206
    :cond_1
    move v9, v0

    .line 210
    .end local v0    # "maxEntryBulkUnRead":I
    .local v9, "maxEntryBulkUnRead":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr v0, v9

    if-nez v0, :cond_2

    .line 211
    nop

    .line 210
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v0, v9

    goto :goto_1

    .line 211
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v0, v9

    add-int/2addr v0, v1

    :goto_1
    move v10, v0

    .line 212
    .local v10, "round":I
    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_2
    if-ge v11, v10, :cond_4

    .line 213
    mul-int v12, v11, v9

    .line 214
    .local v12, "start":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v11, 0x1

    mul-int/2addr v1, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 215
    .local v13, "end":I
    invoke-interface {v8, v12, v13}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v14

    .line 216
    .local v14, "referenceList_split":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    move-object v15, v0

    .line 217
    .local v15, "paramList_split":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v6, p2

    iget-object v1, v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1, v12, v13}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v15, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    .line 218
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start, End: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newlistsize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v0, "\\Seen"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;->RemoveFlag:Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;

    invoke-virtual {v7, v14, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->createNewBulkUpdateParam(Ljava/util/List;[Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/data/OperationEnum;)Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;

    move-result-object v5

    .line 220
    .local v5, "bulkunread":Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;
    iget-object v0, v5, Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;->objects:Lcom/sec/internal/omanetapi/nms/data/ObjectReferenceList;

    iget-object v0, v0, Lcom/sec/internal/omanetapi/nms/data/ObjectReferenceList;->objectReference:[Lcom/sec/internal/omanetapi/nms/data/Reference;

    if-eqz v0, :cond_3

    iget-object v0, v5, Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;->objects:Lcom/sec/internal/omanetapi/nms/data/ObjectReferenceList;

    iget-object v0, v0, Lcom/sec/internal/omanetapi/nms/data/ObjectReferenceList;->objectReference:[Lcom/sec/internal/omanetapi/nms/data/Reference;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 222
    iget-object v4, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mWorkingQueue:Ljava/util/Queue;

    new-instance v3, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkUpdate;

    iget-object v2, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mLine:Ljava/lang/String;

    iget-object v1, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mSyncMsgType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object/from16 v16, v0

    move-object v0, v3

    move-object/from16 v17, v1

    move-object/from16 v1, p0

    move-object/from16 v18, v2

    move-object v2, v5

    move-object v7, v3

    move-object/from16 v3, v18

    move-object v8, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v5

    .end local v5    # "bulkunread":Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;
    .local v17, "bulkunread":Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;
    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageBulkUpdate;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-interface {v8, v7}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_3

    .line 220
    .end local v17    # "bulkunread":Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;
    .restart local v5    # "bulkunread":Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;
    :cond_3
    move-object/from16 v17, v5

    .line 212
    .end local v5    # "bulkunread":Lcom/sec/internal/omanetapi/nms/data/BulkUpdate;
    .end local v12    # "start":I
    .end local v13    # "end":I
    .end local v14    # "referenceList_split":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    .end local v15    # "paramList_split":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    :goto_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    goto/16 :goto_2

    .line 226
    .end local v11    # "i":I
    :cond_4
    return-void

    .line 201
    .end local v9    # "maxEntryBulkUnRead":I
    .end local v10    # "round":I
    :cond_5
    :goto_4
    return-void
.end method


# virtual methods
.method protected setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 9
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 43
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWorkingQueue param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    if-nez p1, :cond_0

    .line 45
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 48
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getObjectIdFlagNamePairFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object v0

    .line 49
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 50
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWorkingQueue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v2, "\\Seen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mWorkingQueue:Ljava/util/Queue;

    new-instance v8, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessagePutObjectFlag;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v2, v8

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessagePutObjectFlag;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-interface {v1, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v2, "\\Deleted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mWorkingQueue:Ljava/util/Queue;

    new-instance v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualObject;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v2, p0, v3, p1, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualObject;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_2
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v2, "\\Flagged"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 56
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mWorkingQueue:Ljava/util/Queue;

    new-instance v8, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteObjectFlag;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    const-string v5, "\\Seen"

    move-object v2, v8

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteObjectFlag;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-interface {v1, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 59
    :cond_3
    :goto_0
    return-void
.end method

.method protected setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 21
    .param p1, "paramlist"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 63
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    if-eqz v8, :cond_b

    iget-object v0, v8, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, v8, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 67
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWorkingQueue  isBulkUpdateEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isBulkUpdateEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "mChangelst size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, v8, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_1

    .line 71
    iget-object v0, v8, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->setWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    .line 72
    return-void

    .line 75
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 76
    .local v10, "bulkDeleteList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 77
    .local v11, "bulkReadList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 78
    .local v12, "bulkUnReadList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    move-object v13, v0

    .line 79
    .local v13, "bulkDeleteParamList":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    move-object v14, v0

    .line 80
    .local v14, "bulkReadParamList":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    move-object v15, v0

    .line 81
    .local v15, "bulkUnReadParamList":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    iget-object v0, v8, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 82
    .local v6, "param":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    if-nez v6, :cond_2

    .line 83
    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 86
    invoke-virtual {v0, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getResourceUrlFlagNamePairFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object v5

    .line 87
    .local v5, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 88
    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v1, "\\Seen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x2f

    const-string v2, ""

    if-eqz v0, :cond_4

    .line 89
    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isBulkUpdateEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/Reference;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/Reference;-><init>()V

    move-object v1, v0

    .line 92
    .local v1, "reference":Lcom/sec/internal/omanetapi/nms/data/Reference;
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    .line 93
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, v14, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/net/MalformedURLException;
    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 99
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .end local v1    # "reference":Lcom/sec/internal/omanetapi/nms/data/Reference;
    :goto_1
    move-object/from16 v18, v11

    goto/16 :goto_4

    .line 100
    :cond_3
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 101
    .local v0, "objId":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v9, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mWorkingQueue:Ljava/util/Queue;

    new-instance v4, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessagePutObjectFlag;

    iget-object v1, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v18, v1

    check-cast v18, Ljava/lang/String;

    iget-object v3, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v1, v4

    move-object/from16 v2, p0

    move-object/from16 v19, v3

    move-object v3, v0

    move-object/from16 v20, v0

    move-object v0, v4

    .end local v0    # "objId":Ljava/lang/String;
    .local v20, "objId":Ljava/lang/String;
    move-object/from16 v4, v18

    move-object v8, v5

    .end local v5    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .local v8, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v5, v6

    move-object/from16 v18, v11

    move-object v11, v6

    .end local v6    # "param":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .local v11, "param":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .local v18, "bulkReadList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    move-object/from16 v6, v19

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessagePutObjectFlag;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-interface {v9, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 104
    .end local v20    # "objId":Ljava/lang/String;
    goto/16 :goto_4

    .line 105
    .end local v8    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "bulkReadList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    .restart local v5    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "param":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .local v11, "bulkReadList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    :cond_4
    move-object v8, v5

    move-object/from16 v18, v11

    move-object v11, v6

    .end local v5    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "param":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .restart local v8    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .local v11, "param":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .restart local v18    # "bulkReadList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v3, "\\Deleted"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 106
    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isBulkDeleteEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 107
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/Reference;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/Reference;-><init>()V

    move-object v1, v0

    .line 109
    .restart local v1    # "reference":Lcom/sec/internal/omanetapi/nms/data/Reference;
    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v3, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    .line 110
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, v13, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    goto :goto_2

    .line 112
    :catch_1
    move-exception v0

    .line 113
    .local v0, "e":Ljava/net/MalformedURLException;
    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 117
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .end local v1    # "reference":Lcom/sec/internal/omanetapi/nms/data/Reference;
    :goto_2
    goto/16 :goto_4

    .line 118
    :cond_5
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 119
    .local v0, "objId":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v9, 0x1

    add-int/2addr v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v1, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mWorkingQueue:Ljava/util/Queue;

    new-instance v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualObject;

    iget-object v3, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v2, v7, v0, v11, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualObject;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 121
    .end local v0    # "objId":Ljava/lang/String;
    goto/16 :goto_4

    .line 122
    :cond_6
    const/4 v9, 0x1

    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    const-string v1, "\\Flagged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 123
    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->isBulkUpdateEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 124
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/Reference;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/Reference;-><init>()V

    move-object v1, v0

    .line 126
    .restart local v1    # "reference":Lcom/sec/internal/omanetapi/nms/data/Reference;
    :try_start_2
    new-instance v0, Ljava/net/URL;

    iget-object v3, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    .line 127
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, v15, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 132
    goto :goto_3

    .line 129
    :catch_2
    move-exception v0

    .line 130
    .local v0, "e":Ljava/net/MalformedURLException;
    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 133
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .end local v1    # "reference":Lcom/sec/internal/omanetapi/nms/data/Reference;
    :goto_3
    goto :goto_4

    .line 134
    :cond_7
    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mWorkingQueue:Ljava/util/Queue;

    new-instance v6, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteObjectFlag;

    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    iget-object v5, v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    const-string v4, "\\Seen"

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v17, v5

    move-object v5, v11

    move-object v9, v6

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteObjectFlag;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-interface {v0, v9}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_4

    .line 87
    .end local v8    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "bulkReadList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    .restart local v5    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "param":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .local v11, "bulkReadList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    :cond_8
    move-object v8, v5

    move-object/from16 v18, v11

    move-object v11, v6

    .line 138
    .end local v5    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "param":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .end local v11    # "bulkReadList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    .restart local v18    # "bulkReadList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    :cond_9
    :goto_4
    move-object/from16 v8, p1

    move-object/from16 v11, v18

    const/4 v9, 0x1

    goto/16 :goto_0

    .line 139
    .end local v18    # "bulkReadList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    .restart local v11    # "bulkReadList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    :cond_a
    move-object/from16 v18, v11

    .end local v11    # "bulkReadList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    .restart local v18    # "bulkReadList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    invoke-direct {v7, v10, v13}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->processBulkDelete(Ljava/util/List;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 140
    move-object/from16 v1, v18

    .end local v18    # "bulkReadList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    .local v1, "bulkReadList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    invoke-direct {v7, v1, v14}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->processBulkSetRead(Ljava/util/List;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 141
    invoke-direct {v7, v12, v15}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;->processBulkSetUnRead(Ljava/util/List;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 142
    return-void

    .line 64
    .end local v1    # "bulkReadList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    .end local v10    # "bulkDeleteList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    .end local v12    # "bulkUnReadList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    .end local v13    # "bulkDeleteParamList":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .end local v14    # "bulkReadParamList":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .end local v15    # "bulkUnReadParamList":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    :cond_b
    :goto_5
    return-void
.end method
