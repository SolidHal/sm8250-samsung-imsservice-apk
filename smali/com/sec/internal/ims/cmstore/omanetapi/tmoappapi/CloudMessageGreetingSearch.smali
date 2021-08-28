.class public Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;
.super Lcom/sec/internal/omanetapi/nms/ObjectsOpSearch;
.source "CloudMessageGreetingSearch.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mFormatOfName:Ljava/text/SimpleDateFormat;

.field private final transient mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field private final transient mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->TAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 10
    .param p1, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "searchCursor"    # Ljava/lang/String;
    .param p3, "currentLine"    # Ljava/lang/String;
    .param p4, "param"    # Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .param p5, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 51
    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getNmsHost()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getOMAApiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getStoreName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p3}, Lcom/sec/internal/omanetapi/nms/ObjectsOpSearch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 55
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->mFormatOfName:Ljava/text/SimpleDateFormat;

    .line 56
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 57
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 58
    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 59
    move-object v2, p0

    .line 60
    .local v2, "httpInterface":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;-><init>()V

    move-object v7, v0

    .line 61
    .local v7, "selectionCriteria":Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {p0, p3, v0, v7}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->constructSearchParam(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;)V

    .line 62
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iput-object p2, v7, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->fromCursor:Ljava/lang/String;

    .line 66
    :cond_0
    invoke-interface {p5, p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 68
    .local v8, "pat":Ljava/lang/String;
    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v7, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->initPostRequest(Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;Z)V

    .line 71
    new-instance v9, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;

    move-object v0, v9

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 244
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    .line 40
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;

    .line 40
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    return-object v0
.end method

.method private constructSearchParam(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;)V
    .locals 18
    .param p1, "currentLine"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    .param p3, "selectionCriteria"    # Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;

    .line 249
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getMaxSearchEntry()I

    move-result v0

    iput v0, v3, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->maxEntries:I

    .line 251
    const/4 v4, 0x0

    .line 252
    .local v4, "searchScope":Lcom/sec/internal/omanetapi/nms/data/Reference;
    const/4 v0, 0x0

    .line 253
    .local v0, "searchCriteria":Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;
    const/4 v5, 0x0

    .line 255
    .local v5, "sortCriteria":Lcom/sec/internal/omanetapi/nms/data/SortCriteria;
    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v6, v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 256
    sget-object v6, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "illegal type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void

    .line 260
    :cond_0
    const-wide/16 v6, 0x0

    .line 261
    .local v6, "period":J
    const-string v8, ""

    .line 262
    .local v8, "date":Ljava/lang/String;
    sget-wide v6, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageSyncPeriod;->GREETING:J

    .line 263
    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    const/4 v10, 0x0

    if-nez v9, :cond_1

    .line 264
    iget-object v9, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->mFormatOfName:Ljava/text/SimpleDateFormat;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 266
    :cond_1
    iget-object v9, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->mFormatOfName:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v6

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 269
    :goto_0
    new-instance v9, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;

    invoke-direct {v9}, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;-><init>()V

    .line 270
    .end local v0    # "searchCriteria":Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;
    .local v9, "searchCriteria":Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;
    const/4 v0, 0x1

    new-array v11, v0, [Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    .line 271
    .local v11, "searchCriterion":[Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;
    new-instance v12, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    invoke-direct {v12}, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;-><init>()V

    aput-object v12, v11, v10

    .line 273
    aget-object v12, v11, v10

    const-string v13, "Date"

    iput-object v13, v12, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->type:Ljava/lang/String;

    .line 274
    aget-object v12, v11, v10

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "minDate="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->value:Ljava/lang/String;

    .line 275
    iput-object v11, v9, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;->criterion:[Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    .line 277
    new-instance v12, Lcom/sec/internal/omanetapi/nms/data/SortCriteria;

    invoke-direct {v12}, Lcom/sec/internal/omanetapi/nms/data/SortCriteria;-><init>()V

    move-object v5, v12

    .line 278
    new-array v12, v0, [Lcom/sec/internal/omanetapi/nms/data/SortCriterion;

    .line 279
    .local v12, "sortCriterion":[Lcom/sec/internal/omanetapi/nms/data/SortCriterion;
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/SortCriterion;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/SortCriterion;-><init>()V

    aput-object v0, v12, v10

    .line 281
    aget-object v0, v12, v10

    iput-object v13, v0, Lcom/sec/internal/omanetapi/nms/data/SortCriterion;->type:Ljava/lang/String;

    .line 282
    aget-object v0, v12, v10

    const-string v10, "Ascending"

    iput-object v10, v0, Lcom/sec/internal/omanetapi/nms/data/SortCriterion;->order:Ljava/lang/String;

    .line 283
    iput-object v12, v5, Lcom/sec/internal/omanetapi/nms/data/SortCriteria;->criterion:[Lcom/sec/internal/omanetapi/nms/data/SortCriterion;

    .line 284
    sget-object v10, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageFolderId;->mVVMailGreeting:Ljava/lang/String;

    .line 286
    .local v10, "folderId":Ljava/lang/String;
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getProtocol()Ljava/lang/String;

    move-result-object v13

    .line 287
    .local v13, "protocol":Ljava/lang/String;
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    move-object v14, v0

    .line 288
    .local v14, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v14, v13}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v15, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-interface {v15}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getNmsHost()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v15, "nms"

    invoke-virtual {v0, v15}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v15, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 289
    invoke-interface {v15}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getOMAApiVersion()Ljava/lang/String;

    move-result-object v15

    .line 288
    invoke-virtual {v0, v15}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v15, v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 289
    invoke-interface {v15}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getStoreName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    move-object/from16 v15, p1

    invoke-virtual {v0, v15}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 290
    const-string v1, "folders"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 292
    :try_start_0
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/Reference;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/Reference;-><init>()V

    move-object v4, v0

    .line 293
    new-instance v0, Ljava/net/URL;

    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, v4, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    move-wide/from16 v16, v6

    goto :goto_1

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/net/MalformedURLException;
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/CloudMessageGreetingSearch;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v16, v6

    .end local v6    # "period":J
    .local v16, "period":J
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v1, 0x0

    iput-object v1, v4, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    .line 299
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :goto_1
    iput-object v4, v3, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->searchScope:Lcom/sec/internal/omanetapi/nms/data/Reference;

    .line 300
    iput-object v5, v3, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->sortCriteria:Lcom/sec/internal/omanetapi/nms/data/SortCriteria;

    .line 301
    iput-object v9, v3, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->searchCriteria:Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;

    .line 302
    return-void
.end method
