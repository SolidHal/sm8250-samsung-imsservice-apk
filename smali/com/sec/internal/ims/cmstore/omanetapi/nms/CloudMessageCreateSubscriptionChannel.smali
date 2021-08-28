.class public Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;
.super Lcom/sec/internal/omanetapi/nms/AllSubscriptions;
.source "CloudMessageCreateSubscriptionChannel.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x305925178bd56ab4L


# instance fields
.field private final transient mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;ZLcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 16
    .param p1, "callFlowListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "notifyURL"    # Ljava/lang/String;
    .param p3, "restartToken"    # Ljava/lang/String;
    .param p4, "callCommonInterface"    # Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .param p5, "needPresetSearchRemove"    # Z
    .param p6, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 36
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p5

    move-object/from16 v4, p6

    invoke-interface/range {p6 .. p6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getNcHost()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p6 .. p6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getOMAApiVersion()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p6 .. p6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getStoreName()Ljava/lang/String;

    move-result-object v7

    .line 37
    invoke-interface/range {p6 .. p6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getUserTelCtn()Ljava/lang/String;

    move-result-object v8

    .line 36
    invoke-direct {v0, v5, v6, v7, v8}, Lcom/sec/internal/omanetapi/nms/AllSubscriptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    move-object/from16 v5, p4

    iput-object v5, v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 39
    move-object/from16 v6, p0

    .line 40
    .local v6, "httpInterface":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    new-instance v7, Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;

    invoke-direct {v7}, Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;-><init>()V

    .line 42
    .local v7, "subscription":Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;
    new-instance v8, Lcom/sec/internal/omanetapi/common/data/CallbackReference;

    invoke-direct {v8}, Lcom/sec/internal/omanetapi/common/data/CallbackReference;-><init>()V

    .line 44
    .local v8, "callbackReference":Lcom/sec/internal/omanetapi/common/data/CallbackReference;
    iput-object v1, v8, Lcom/sec/internal/omanetapi/common/data/CallbackReference;->notifyURL:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 46
    const-string v9, "custom_data"

    iput-object v9, v8, Lcom/sec/internal/omanetapi/common/data/CallbackReference;->callbackData:Ljava/lang/String;

    goto :goto_0

    .line 48
    :cond_0
    invoke-interface/range {p6 .. p6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getNotificaitonFormat()Lcom/sec/internal/omanetapi/common/data/NotificationFormat;

    move-result-object v9

    iput-object v9, v8, Lcom/sec/internal/omanetapi/common/data/CallbackReference;->notificationFormat:Lcom/sec/internal/omanetapi/common/data/NotificationFormat;

    .line 50
    :goto_0
    iput-object v8, v7, Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;->callbackReference:Lcom/sec/internal/omanetapi/common/data/CallbackReference;

    .line 51
    const v9, 0x15180

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v7, Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;->duration:Ljava/lang/Integer;

    .line 52
    const-string v9, ""

    iput-object v9, v7, Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;->clientCorrelator:Ljava/lang/String;

    .line 53
    iput-object v2, v7, Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;->restartToken:Ljava/lang/String;

    .line 54
    sget-object v10, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "notifyURL "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " request restartToken "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " isGcmReplacePolling: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " needPresetSearchRemove"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 54
    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_1

    .line 57
    if-nez v3, :cond_1

    .line 58
    new-instance v10, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;

    invoke-direct {v10}, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;-><init>()V

    .line 59
    .local v10, "searchCriteria":Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;
    new-array v12, v11, [Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    .line 60
    .local v12, "searchCriterion":[Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;
    new-instance v13, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    invoke-direct {v13}, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;-><init>()V

    const/4 v14, 0x0

    aput-object v13, v12, v14

    .line 61
    aget-object v13, v12, v14

    const-string v15, "PresetSearch"

    iput-object v15, v13, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->type:Ljava/lang/String;

    .line 62
    aget-object v13, v12, v14

    const-string v15, "UPOneDotO"

    iput-object v15, v13, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->name:Ljava/lang/String;

    .line 63
    aget-object v13, v12, v14

    iput-object v9, v13, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->value:Ljava/lang/String;

    .line 64
    iput-object v12, v10, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;->criterion:[Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    .line 65
    iput-object v10, v7, Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;->filter:Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;

    .line 69
    .end local v10    # "searchCriteria":Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;
    .end local v12    # "searchCriterion":[Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;
    :cond_1
    invoke-interface/range {p6 .. p6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getUserTelCtn()Ljava/lang/String;

    move-result-object v9

    .line 70
    .local v9, "line":Ljava/lang/String;
    invoke-interface {v4, v9}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 72
    .local v10, "pat":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 73
    invoke-interface/range {p6 .. p6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getContentType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12, v10}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->initSubscribeRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 75
    :cond_2
    invoke-interface/range {p6 .. p6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getContentType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12, v10}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_1
    invoke-virtual {v0, v7, v11}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->initPostRequest(Lcom/sec/internal/omanetapi/nms/data/NmsSubscription;Z)V

    .line 79
    new-instance v11, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;

    move-object/from16 v12, p1

    invoke-direct {v11, v0, v12, v6, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {v0, v11}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 164
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;

    .line 26
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateSubscriptionChannel;->mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    return-object v0
.end method
