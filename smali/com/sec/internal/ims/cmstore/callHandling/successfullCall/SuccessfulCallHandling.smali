.class public Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessfulCallHandling;
.super Ljava/lang/Object;
.source "SuccessfulCallHandling.java"


# static fields
.field public static final HAPPY_PATH_DEFAULT:Ljava/lang/String; = "HAP.DEF"

.field public static final TAG:Ljava/lang/String;

.field private static final ZERO_DELAY:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessfulCallHandling;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessfulCallHandling;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callHandling(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 7
    .param p0, "controller"    # Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "retryStackAdapterHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;
    .param p3, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 30
    const-string v2, "HAP.DEF"

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessfulCallHandling;->internalCallHandling(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;JLcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 31
    return-void
.end method

.method public static callHandling(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 7
    .param p0, "controller"    # Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "callFlow"    # Ljava/lang/String;
    .param p3, "retryStackAdapterHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;
    .param p4, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 35
    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessfulCallHandling;->internalCallHandling(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;JLcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 36
    return-void
.end method

.method private static findEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;
    .locals 5
    .param p0, "api"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p1, "callFlow"    # Ljava/lang/String;
    .param p2, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 106
    return-object v1

    .line 109
    :cond_0
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getSuccessfullCallFlowTranslator()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 110
    return-object v1

    .line 113
    :cond_1
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getSuccessfullCallFlowTranslator()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 114
    .local v0, "savedCallFlow":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;>;"
    if-eqz v0, :cond_3

    .line 115
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    .line 116
    .local v3, "flow":Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;
    iget-object v4, v3, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;->mFlow:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 117
    iget-object v1, v3, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;->mProvisionEventType:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    return-object v1

    .line 119
    .end local v3    # "flow":Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;
    :cond_2
    goto :goto_0

    .line 121
    :cond_3
    return-object v1
.end method

.method private static internalCallHandling(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;JLcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 8
    .param p0, "controller"    # Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "callFlow"    # Ljava/lang/String;
    .param p3, "delay"    # J
    .param p5, "retryStackAdapterHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;
    .param p6, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 40
    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->getLastFailedRequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v0

    .line 41
    .local v0, "top":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->pop()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v1

    .line 44
    .local v1, "popApi":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "popApiName":Ljava/lang/String;
    :goto_0
    sget-object v3, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessfulCallHandling;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "API "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Pop from Retry Stack"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .end local v1    # "popApi":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .end local v2    # "popApiName":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getTotalRetryCounter()I

    move-result v1

    .line 51
    .local v1, "retryCounter":I
    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-lez v1, :cond_2

    .line 52
    invoke-static {p1, p2}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessfulCallHandling;->isEndOfCallFlow(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 53
    sget-object v2, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessfulCallHandling;->TAG:Ljava/lang/String;

    const-string v4, "end of call flow. stack is empty. reset the counter to 0"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveTotalRetryCounter(I)V

    .line 58
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    .line 59
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 60
    sget-object v2, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessfulCallHandling;->TAG:Ljava/lang/String;

    const-string v3, "RequestAccount request has no happy path in strategy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void

    .line 64
    :cond_3
    sget-object v2, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessfulCallHandling;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proceeding Flow:: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {p1, p2, p6}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessfulCallHandling;->findEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object v2

    .line 66
    .local v2, "event":Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;
    if-eqz v2, :cond_4

    .line 67
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v3

    invoke-virtual {p0, v3, p3, p4}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->updateDelay(IJ)Z

    goto :goto_1

    .line 69
    :cond_4
    sget-object v4, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessfulCallHandling;->TAG:Ljava/lang/String;

    const-string v5, "event is null. end of call flow"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 71
    const-string v3, "Retry API:: is null"

    .line 72
    .local v3, "retryAPIName":Ljava/lang/String;
    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->getLastFailedRequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v4

    .line 73
    .local v4, "retry":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    if-eqz v4, :cond_5

    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retry API:: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-interface {p5, v4, p0, p6, p5}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->retryApi(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)V

    .line 77
    :cond_5
    sget-object v5, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessfulCallHandling;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stack is NOT empty, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v3    # "retryAPIName":Ljava/lang/String;
    .end local v4    # "retry":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    goto :goto_1

    .line 79
    :cond_6
    sget-object v4, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessfulCallHandling;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "stack is empty. reset the counter to 0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveTotalRetryCounter(I)V

    .line 83
    :goto_1
    return-void
.end method

.method private static isEndOfCallFlow(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)Z
    .locals 3
    .param p0, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p1, "callFlow"    # Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "requestName":Ljava/lang/String;
    const-class v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 88
    return v2

    .line 90
    :cond_0
    const-class v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    const-string v1, "HAP.REQACCOUNT.EXIST_USER"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    return v2

    .line 94
    :cond_1
    const-class v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    return v2

    .line 97
    :cond_2
    const-class v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    return v2

    .line 100
    :cond_3
    const/4 v1, 0x0

    return v1
.end method
