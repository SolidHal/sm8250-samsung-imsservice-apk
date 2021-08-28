.class public Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;
.super Landroid/os/Handler;
.source "VvmHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBufferDbTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

.field private final mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

.field private final mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

.field private final mUpdateFromCloudRegistrants:Lcom/sec/internal/helper/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "netApiEventListener"    # Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;
    .param p4, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 59
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 51
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mUpdateFromCloudRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 60
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-direct {v0, p2, p4}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mBufferDbTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 61
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    .line 62
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 63
    return-void
.end method

.method private deleteGreeting(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 12
    .param p1, "deleteparam"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 144
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteGreeting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    if-nez p1, :cond_0

    .line 146
    return-void

    .line 148
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getObjectList()Lcom/sec/internal/omanetapi/nms/data/ObjectList;

    move-result-object v0

    .line 149
    .local v0, "list":Lcom/sec/internal/omanetapi/nms/data/ObjectList;
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/sec/internal/omanetapi/nms/data/ObjectList;->object:[Lcom/sec/internal/omanetapi/nms/data/Object;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/sec/internal/omanetapi/nms/data/ObjectList;->object:[Lcom/sec/internal/omanetapi/nms/data/Object;

    array-length v1, v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 154
    :cond_1
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/BulkDelete;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/BulkDelete;-><init>()V

    .line 155
    .local v1, "bulkdelete":Lcom/sec/internal/omanetapi/nms/data/BulkDelete;
    new-instance v2, Lcom/sec/internal/omanetapi/nms/data/ObjectReferenceList;

    invoke-direct {v2}, Lcom/sec/internal/omanetapi/nms/data/ObjectReferenceList;-><init>()V

    iput-object v2, v1, Lcom/sec/internal/omanetapi/nms/data/BulkDelete;->objects:Lcom/sec/internal/omanetapi/nms/data/ObjectReferenceList;

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v2

    .line 157
    .local v9, "referenceList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    iget-object v2, v0, Lcom/sec/internal/omanetapi/nms/data/ObjectList;->object:[Lcom/sec/internal/omanetapi/nms/data/Object;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 158
    .local v5, "obj":Lcom/sec/internal/omanetapi/nms/data/Object;
    new-instance v6, Lcom/sec/internal/omanetapi/nms/data/Reference;

    invoke-direct {v6}, Lcom/sec/internal/omanetapi/nms/data/Reference;-><init>()V

    .line 159
    .local v6, "ref":Lcom/sec/internal/omanetapi/nms/data/Reference;
    iget-object v7, v5, Lcom/sec/internal/omanetapi/nms/data/Object;->resourceURL:Ljava/net/URL;

    iput-object v7, v6, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    .line 160
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    .end local v5    # "obj":Lcom/sec/internal/omanetapi/nms/data/Object;
    .end local v6    # "ref":Lcom/sec/internal/omanetapi/nms/data/Reference;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 162
    :cond_2
    iget-object v2, v1, Lcom/sec/internal/omanetapi/nms/data/BulkDelete;->objects:Lcom/sec/internal/omanetapi/nms/data/ObjectReferenceList;

    .line 163
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/sec/internal/omanetapi/nms/data/Reference;

    invoke-interface {v9, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sec/internal/omanetapi/nms/data/Reference;

    iput-object v3, v2, Lcom/sec/internal/omanetapi/nms/data/ObjectReferenceList;->objectReference:[Lcom/sec/internal/omanetapi/nms/data/Reference;

    .line 164
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v10

    new-instance v11, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingBulkDeletion;

    .line 165
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    move-result-object v6

    .line 166
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v2, v11

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingBulkDeletion;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/omanetapi/nms/data/BulkDelete;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 164
    invoke-virtual {v10, v11}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_2

    .line 150
    .end local v1    # "bulkdelete":Lcom/sec/internal/omanetapi/nms/data/BulkDelete;
    .end local v9    # "referenceList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/omanetapi/nms/data/Reference;>;"
    :cond_3
    :goto_1
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPLOAD_GREETING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 151
    .local v1, "upload":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 152
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    .end local v1    # "upload":Landroid/os/Message;
    nop

    .line 168
    :goto_2
    return-void
.end method

.method private deleteGreetingAndSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 10
    .param p1, "responseParam"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 131
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteGreetingAndSearch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    if-nez p1, :cond_0

    .line 133
    return-void

    .line 135
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->deleteGreeting(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 136
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    .line 137
    .local v0, "greetingparam":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 138
    .local v1, "line":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getSearchCursor()Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, "cursor":Ljava/lang/String;
    new-instance v9, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v8

    move-object v5, v1

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 140
    .local v2, "request":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 141
    return-void
.end method

.method private gotoHandlerEvent(ILjava/lang/Object;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "param"    # Ljava/lang/Object;

    .line 202
    if-eqz p2, :cond_0

    .line 203
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->sendEmptyMessage(I)Z

    .line 207
    :goto_0
    return-void
.end method

.method private notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 2
    .param p1, "param"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 325
    if-nez p1, :cond_0

    .line 326
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    const-string v1, "notifyBufferDB ParamOMAresponseforBufDB is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 329
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mUpdateFromCloudRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 331
    return-void
.end method

.method private setUpVvmDataUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 7
    .param p1, "paramList"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 334
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUpVvmDataUpdate param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 337
    .local v1, "param":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    if-nez v1, :cond_0

    .line 338
    goto :goto_0

    .line 340
    :cond_0
    new-instance v2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;

    invoke-direct {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;-><init>()V

    .line 341
    .local v2, "profile":Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;
    iget v3, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    .line 355
    :pswitch_0
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mBufferDbTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 356
    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getVVMServiceProfileFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    move-result-object v3

    .line 357
    .local v3, "type":Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;
    if-nez v3, :cond_1

    .line 358
    goto/16 :goto_2

    .line 360
    :cond_1
    sget-object v4, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUpVvmDataUpdate :VvmTypeChange "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    sget-object v4, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->VOICEMAILTOTEXT:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 362
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v4

    new-instance v5, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileUpdate;

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v5, p0, v2, v1, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileUpdate;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {v4, v5}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_2

    .line 364
    :cond_2
    sget-object v4, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->ACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->DEACTIVATE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 368
    :cond_3
    sget-object v4, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->FULLPROFILE:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 369
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v4

    new-instance v5, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v5, p0, v1, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGetVvmProfile;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {v4, v5}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_2

    .line 366
    :cond_4
    :goto_1
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v4

    new-instance v5, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v5, p0, v2, v1, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileAttributePut;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {v4, v5}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_2

    .line 343
    .end local v3    # "type":Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;
    :pswitch_1
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mBufferDbTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getVVMServiceProfileFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmTypeChange;

    .line 345
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v3

    new-instance v4, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileUpdate;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v4, p0, v2, v1, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageVvmProfileUpdate;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 347
    goto :goto_2

    .line 349
    :pswitch_2
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SEARCH_GREETING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 350
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    .line 349
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 351
    .local v3, "msgforgreeting":Landroid/os/Message;
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 352
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 353
    nop

    .line 375
    .end local v1    # "param":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .end local v2    # "profile":Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;
    .end local v3    # "msgforgreeting":Landroid/os/Message;
    :cond_5
    :goto_2
    goto/16 :goto_0

    .line 376
    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private uploadGreeting(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 7
    .param p1, "uploadparam"    # Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 171
    if-nez p1, :cond_0

    .line 172
    return-void

    .line 174
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v0

    .line 175
    .local v0, "greetingbufparam":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mBufferDbTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 176
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getVVMGreetingObjectPairFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Landroid/util/Pair;

    move-result-object v1

    .line 177
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/sec/internal/omanetapi/nms/data/Object;Lcom/sec/internal/helper/httpclient/HttpPostBody;>;"
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mBufferDbTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getVVMGreetingTypeFromBufDb(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    move-result-object v2

    .line 179
    .local v2, "greetingtype":Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;
    sget-object v3, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uploadGreeting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " greetingtype: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sget-object v3, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->Default:Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/cmstore/params/ParamVvmUpdate$VvmGreetingType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 181
    if-eqz v1, :cond_1

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 182
    invoke-virtual {v3}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getMultiparts()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 183
    invoke-virtual {v3}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getMultiparts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 184
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v3

    new-instance v4, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateAllObjects;

    new-instance v5, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;

    invoke-direct {v5, v1, v0}, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;-><init>(Landroid/util/Pair;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v4, p0, v5, v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateAllObjects;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_0

    .line 187
    :cond_1
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_CHANGE_ERROR:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    .line 188
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    move-result-object v4

    .line 187
    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 189
    .local v3, "vvmerrormsg":Landroid/os/Message;
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 190
    .end local v3    # "vvmerrormsg":Landroid/os/Message;
    goto :goto_0

    .line 192
    :cond_2
    new-instance v3, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v4, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->ONE_MESSAGE_UPLOADED:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 193
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v3

    .line 194
    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v3

    .line 195
    .local v3, "builder":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_CHANGE_SUCCEED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 196
    .local v4, "defaultGreetingMsg":Landroid/os/Message;
    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v5

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 197
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 199
    .end local v3    # "builder":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .end local v4    # "defaultGreetingMsg":Landroid/os/Message;
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 71
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 73
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    .line 75
    .local v0, "type":Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;
    if-nez v0, :cond_0

    .line 76
    return-void

    .line 78
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 122
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 123
    goto/16 :goto_0

    .line 118
    :pswitch_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOmaAuthenticationFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;J)V

    .line 120
    goto/16 :goto_0

    .line 113
    :pswitch_2
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_NOTIFY:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 114
    .local v1, "succeedmsg":Landroid/os/Message;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 115
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 116
    goto :goto_0

    .line 104
    .end local v1    # "succeedmsg":Landroid/os/Message;
    :pswitch_3
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->VVM_FAX_ERROR_WITH_NO_RETRY:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 105
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 107
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v1

    .line 108
    .local v1, "builder":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_NOTIFY:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 109
    .local v2, "errorMsg":Landroid/os/Message;
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 110
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    goto :goto_0

    .line 100
    .end local v1    # "builder":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .end local v2    # "errorMsg":Landroid/os/Message;
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 101
    .local v1, "uploadparam":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->uploadGreeting(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 102
    goto :goto_0

    .line 93
    .end local v1    # "uploadparam":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 96
    .local v1, "deleteparamContinue":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->deleteGreetingAndSearch(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 97
    .end local v1    # "deleteparamContinue":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    goto :goto_0

    .line 89
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    .line 90
    .local v1, "deleteparam":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->deleteGreeting(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 91
    goto :goto_0

    .line 83
    .end local v1    # "deleteparam":Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 84
    .local v1, "greetingparam":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    iget-object v8, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 85
    .local v8, "line":Ljava/lang/String;
    new-instance v9, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    const-string v4, ""

    move-object v2, v9

    move-object v3, p0

    move-object v5, v8

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 86
    .local v2, "request":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 87
    goto :goto_0

    .line 80
    .end local v1    # "greetingparam":Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .end local v2    # "request":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .end local v8    # "line":Ljava/lang/String;
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->setUpVvmDataUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 81
    nop

    .line 128
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 1
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 253
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_CHANGE_ERROR:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->sendEmptyMessage(I)Z

    .line 254
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 1
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 248
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_CHANGE_ERROR:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 249
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 1
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "errorCode"    # Ljava/lang/String;

    .line 243
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->VVM_CHANGE_ERROR:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->sendEmptyMessage(I)Z

    .line 244
    return-void
.end method

.method public onFailedEvent(ILjava/lang/Object;)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "param"    # Ljava/lang/Object;

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    .line 260
    return-void
.end method

.method public onFixedFlow(I)V
    .locals 0
    .param p1, "event"    # I

    .line 270
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->sendEmptyMessage(I)Z

    .line 271
    return-void
.end method

.method public onFixedFlowWithMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 275
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 276
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFixedFlowWithMessage message is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 279
    return-void
.end method

.method public onGoToEvent(ILjava/lang/Object;)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "param"    # Ljava/lang/Object;

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    .line 218
    return-void
.end method

.method public onMoveOnToNext(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V
    .locals 0
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "param"    # Ljava/lang/Object;

    .line 222
    return-void
.end method

.method public onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V
    .locals 2
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "retryAfter"    # I

    .line 265
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SELF_RETRY:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 266
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 232
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "callFlow"    # Ljava/lang/String;

    .line 228
    return-void
.end method

.method public onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V
    .locals 1
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "event"    # I
    .param p3, "param"    # Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOmaSuccess(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 238
    invoke-direct {p0, p2, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->gotoHandlerEvent(ILjava/lang/Object;)V

    .line 239
    return-void
.end method

.method public pause()V
    .locals 0

    .line 289
    return-void
.end method

.method public registerForUpdateFromCloud(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->mUpdateFromCloudRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    .line 67
    return-void
.end method

.method public resume()V
    .locals 0

    .line 294
    return-void
.end method

.method public sendVvmUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 1
    .param p1, "paramList"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 210
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->EVENT_VVM_DATA_UPDATE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 211
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 212
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 213
    return-void
.end method

.method public setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

    .line 381
    return-void
.end method

.method public start()V
    .locals 0

    .line 284
    return-void
.end method

.method public stop()V
    .locals 0

    .line 299
    return-void
.end method

.method public update(I)Z
    .locals 1
    .param p1, "eventType"    # I

    .line 303
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->sendEmptyMessage(I)Z

    move-result v0

    return v0
.end method

.method public updateDelay(IJ)Z
    .locals 3
    .param p1, "eventType"    # I
    .param p2, "delay"    # J

    .line 313
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDelay: eventType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method

.method public updateDelayRetry(IJ)Z
    .locals 1
    .param p1, "eventType"    # I
    .param p2, "delay"    # J

    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public updateMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 308
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method
