.class public Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;
.super Lcom/sec/internal/omanetapi/nms/ObjectsOpSearch;
.source "CloudMessageObjectsOpSearch.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x72101bb1a5181ffL


# instance fields
.field private final JSON_CURSOR_TAG:Ljava/lang/String;

.field private final JSON_OBJECT_LIST_TAG:Ljava/lang/String;

.field private final mFormatOfName:Ljava/text/SimpleDateFormat;

.field private final transient mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field private final transient mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZLcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 17
    .param p1, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "searchCursor"    # Ljava/lang/String;
    .param p3, "currentLine"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    .param p5, "needPresetSearchRemove"    # Z
    .param p6, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 53
    move-object/from16 v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p6

    invoke-interface/range {p6 .. p6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getNmsHost()Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {p6 .. p6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getOMAApiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p6 .. p6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getStoreName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v0, v1, v2, v9}, Lcom/sec/internal/omanetapi/nms/ObjectsOpSearch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "objectList"

    iput-object v0, v8, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->JSON_OBJECT_LIST_TAG:Ljava/lang/String;

    .line 49
    const-string v0, "cursor"

    iput-object v0, v8, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->JSON_CURSOR_TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 57
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, v8, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mFormatOfName:Ljava/text/SimpleDateFormat;

    .line 58
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 59
    move-object/from16 v11, p1

    iput-object v11, v8, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 60
    iput-object v10, v8, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 61
    move-object/from16 v3, p0

    .line 62
    .local v3, "httpInterface":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;-><init>()V

    move-object v12, v0

    .line 63
    .local v12, "selectionCriteria":Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;
    move-object/from16 v13, p4

    move/from16 v14, p5

    invoke-direct {v8, v9, v13, v12, v14}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->constructSearchParam(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;Z)V

    .line 64
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    move-object/from16 v15, p2

    iput-object v15, v12, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->fromCursor:Ljava/lang/String;

    goto :goto_0

    .line 64
    :cond_0
    move-object/from16 v15, p2

    .line 68
    :goto_0
    invoke-interface {v10, v9}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 70
    .local v7, "pat":Ljava/lang/String;
    invoke-interface/range {p6 .. p6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {v8, v12, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->initPostRequest(Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;Z)V

    .line 73
    new-instance v6, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v9, v6

    move-object/from16 v6, p2

    move-object/from16 v16, v7

    .end local v7    # "pat":Ljava/lang/String;
    .local v16, "pat":Ljava/lang/String;
    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 225
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    .line 39
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    return-object v0
.end method

.method private constructSearchParam(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;Z)V
    .locals 17
    .param p1, "currentLine"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    .param p3, "selectionCriteria"    # Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;
    .param p4, "needPresetSearchRemove"    # Z

    .line 230
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMaxSearchEntry()I

    move-result v0

    iput v0, v3, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->maxEntries:I

    .line 231
    const/4 v4, 0x0

    .line 232
    .local v4, "searchScope":Lcom/sec/internal/omanetapi/nms/data/Reference;
    const/4 v5, 0x0

    .line 233
    .local v5, "searchCriteria":Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;
    const/4 v6, 0x0

    .line 235
    .local v6, "sortCriteria":Lcom/sec/internal/omanetapi/nms/data/SortCriteria;
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v7, ""

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 268
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 235
    if-eqz v0, :cond_1

    .line 236
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    if-nez p4, :cond_0

    .line 238
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;-><init>()V

    move-object v5, v0

    .line 239
    new-array v0, v8, [Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    .line 240
    .local v0, "searchCriterion":[Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;
    new-instance v8, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    invoke-direct {v8}, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;-><init>()V

    aput-object v8, v0, v9

    .line 241
    aget-object v8, v0, v9

    const-string v10, "PresetSearch"

    iput-object v10, v8, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->type:Ljava/lang/String;

    .line 242
    aget-object v8, v0, v9

    const-string v10, "UPOneDotO"

    iput-object v10, v8, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->name:Ljava/lang/String;

    .line 243
    aget-object v8, v0, v9

    iput-object v7, v8, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->value:Ljava/lang/String;

    .line 244
    iput-object v0, v5, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;->criterion:[Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    .line 245
    iput-object v5, v3, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->searchCriteria:Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;

    .line 248
    .end local v0    # "searchCriterion":[Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;
    :cond_0
    return-void

    .line 251
    :cond_1
    const-wide/16 v11, 0x0

    .line 252
    .local v11, "period":J
    const-string v0, ""

    .line 253
    .local v0, "date":Ljava/lang/String;
    sget-object v13, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "type: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    sget-object v13, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v13, v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 255
    const-string v13, ""

    .line 256
    .local v13, "folderId":Ljava/lang/String;
    sget-object v14, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v14, v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 257
    sget-object v13, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageFolderId;->mRCSMessageStore:Ljava/lang/String;

    .line 258
    sget-wide v11, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->MESSAGE:J

    .line 259
    iget-object v10, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mFormatOfName:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v11

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto/16 :goto_0

    .line 260
    :cond_2
    sget-object v14, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v14, v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 261
    sget-object v13, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageFolderId;->mVVMailInbox:Ljava/lang/String;

    .line 262
    sget-wide v11, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->VVM:J

    .line 263
    iget-object v10, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mFormatOfName:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v11

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto/16 :goto_0

    .line 264
    :cond_3
    sget-object v14, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->FAX:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v14, v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-wide/16 v15, 0x0

    if-eqz v14, :cond_5

    .line 265
    sget-object v13, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageFolderId;->mMediaFax:Ljava/lang/String;

    .line 266
    sget-wide v11, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->FAX:J

    .line 267
    cmp-long v14, v11, v15

    if-nez v14, :cond_4

    .line 268
    iget-object v14, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mFormatOfName:Ljava/text/SimpleDateFormat;

    invoke-virtual {v14, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    .line 270
    :cond_4
    iget-object v10, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mFormatOfName:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v11

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    .line 272
    :cond_5
    sget-object v14, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->CALLLOG:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v14, v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 273
    sget-object v13, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageFolderId;->mCallHistory:Ljava/lang/String;

    .line 274
    sget-wide v11, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->CALL_LOG:J

    .line 275
    iget-object v10, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mFormatOfName:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v11

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    .line 276
    :cond_6
    sget-object v14, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v14, v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 277
    sget-object v13, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageFolderId;->mVVMailGreeting:Ljava/lang/String;

    .line 278
    sget-wide v11, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->GREETING:J

    .line 279
    cmp-long v14, v11, v15

    if-nez v14, :cond_7

    .line 280
    iget-object v14, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mFormatOfName:Ljava/text/SimpleDateFormat;

    invoke-virtual {v14, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    .line 282
    :cond_7
    iget-object v10, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mFormatOfName:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v11

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    .line 276
    :cond_8
    move-object v10, v0

    .line 285
    .end local v0    # "date":Ljava/lang/String;
    .local v10, "date":Ljava/lang/String;
    :goto_0
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getProtocol()Ljava/lang/String;

    move-result-object v14

    .line 286
    .local v14, "protocol":Ljava/lang/String;
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    move-object v15, v0

    .line 287
    .local v15, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v15, v14}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v9, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v9}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getNmsHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 288
    const-string v9, "nms"

    invoke-virtual {v0, v9}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v9, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 289
    invoke-interface {v9}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getOMAApiVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v9, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 290
    invoke-interface {v9}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getStoreName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 291
    move-object/from16 v9, p1

    invoke-virtual {v0, v9}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 292
    const-string v8, "folders"

    invoke-virtual {v0, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 293
    invoke-virtual {v0, v13}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 295
    :try_start_0
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/Reference;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/Reference;-><init>()V

    move-object v4, v0

    .line 296
    new-instance v0, Ljava/net/URL;

    invoke-virtual {v15}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, v4, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    move-object v0, v10

    goto :goto_1

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/net/MalformedURLException;
    sget-object v8, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v1, 0x0

    iput-object v1, v4, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    move-object v0, v10

    goto :goto_1

    .line 254
    .end local v10    # "date":Ljava/lang/String;
    .end local v13    # "folderId":Ljava/lang/String;
    .end local v14    # "protocol":Ljava/lang/String;
    .end local v15    # "builder":Landroid/net/Uri$Builder;
    .local v0, "date":Ljava/lang/String;
    :cond_9
    move-object/from16 v9, p1

    .line 302
    :goto_1
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;-><init>()V

    .line 303
    .end local v5    # "searchCriteria":Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;
    .local v1, "searchCriteria":Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;
    const/4 v2, 0x1

    new-array v5, v2, [Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    .line 304
    .local v5, "searchCriterion":[Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;
    new-instance v2, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    invoke-direct {v2}, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;-><init>()V

    const/4 v7, 0x0

    aput-object v2, v5, v7

    .line 306
    aget-object v2, v5, v7

    const-string v8, "Date"

    iput-object v8, v2, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->type:Ljava/lang/String;

    .line 307
    aget-object v2, v5, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "minDate="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->value:Ljava/lang/String;

    .line 308
    iput-object v5, v1, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;->criterion:[Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    .line 310
    new-instance v2, Lcom/sec/internal/omanetapi/nms/data/SortCriteria;

    invoke-direct {v2}, Lcom/sec/internal/omanetapi/nms/data/SortCriteria;-><init>()V

    .line 311
    .end local v6    # "sortCriteria":Lcom/sec/internal/omanetapi/nms/data/SortCriteria;
    .local v2, "sortCriteria":Lcom/sec/internal/omanetapi/nms/data/SortCriteria;
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/sec/internal/omanetapi/nms/data/SortCriterion;

    .line 312
    .local v6, "sortCriterion":[Lcom/sec/internal/omanetapi/nms/data/SortCriterion;
    new-instance v7, Lcom/sec/internal/omanetapi/nms/data/SortCriterion;

    invoke-direct {v7}, Lcom/sec/internal/omanetapi/nms/data/SortCriterion;-><init>()V

    const/4 v10, 0x0

    aput-object v7, v6, v10

    .line 314
    aget-object v7, v6, v10

    iput-object v8, v7, Lcom/sec/internal/omanetapi/nms/data/SortCriterion;->type:Ljava/lang/String;

    .line 315
    aget-object v7, v6, v10

    const-string v8, "Ascending"

    iput-object v8, v7, Lcom/sec/internal/omanetapi/nms/data/SortCriterion;->order:Ljava/lang/String;

    .line 316
    iput-object v6, v2, Lcom/sec/internal/omanetapi/nms/data/SortCriteria;->criterion:[Lcom/sec/internal/omanetapi/nms/data/SortCriterion;

    .line 318
    iput-object v4, v3, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->searchScope:Lcom/sec/internal/omanetapi/nms/data/Reference;

    .line 319
    iput-object v2, v3, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->sortCriteria:Lcom/sec/internal/omanetapi/nms/data/SortCriteria;

    .line 320
    iput-object v1, v3, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->searchCriteria:Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;

    .line 321
    return-void
.end method
