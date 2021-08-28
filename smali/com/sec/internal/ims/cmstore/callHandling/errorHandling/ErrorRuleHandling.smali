.class public Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;
.super Ljava/lang/Object;
.source "ErrorRuleHandling.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findErrorConfig(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;
    .locals 5
    .param p0, "api"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 137
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getFailedCallFlowTranslator()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 138
    return-object v1

    .line 140
    :cond_0
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getFailedCallFlowTranslator()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 141
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;>;"
    if-eqz v0, :cond_2

    .line 142
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 143
    .local v3, "error":Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;
    iget-object v4, v3, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;->mErrorCode:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 144
    return-object v3

    .line 146
    .end local v3    # "error":Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;
    :cond_1
    goto :goto_0

    .line 148
    :cond_2
    return-object v1
.end method

.method public static handleError(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;ILcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 8
    .param p0, "controller"    # Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "error"    # Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;
    .param p3, "retryAfter"    # I
    .param p4, "retryStackAdapterHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;
    .param p5, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 74
    if-nez p1, :cond_0

    .line 75
    return-void

    .line 77
    :cond_0
    invoke-interface {p4, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->checkRequestRetried(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)Z

    move-result v0

    .line 78
    .local v0, "retrybefore":Z
    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getTotalRetryCounter()I

    move-result v1

    .line 81
    .local v1, "totalCounter":I
    iget-object v2, p2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;->mRetryAttr:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v3, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_FORBIDDEN:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    if-ne v2, v3, :cond_1

    .line 82
    sget-object v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "retry forbidden"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget v2, p2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;->mFailEvent:I

    invoke-interface {p0, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    goto/16 :goto_1

    .line 84
    :cond_1
    invoke-interface {p4}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->isRetryTimesFinished()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    sget-object v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "retry time finished"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget v2, p2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;->mFailEvent:I

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SYNC_ERR:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    if-eq v2, v3, :cond_2

    iget v2, p2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;->mFailEvent:I

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ACCESS_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 87
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 88
    invoke-interface {p4}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->clearRetryHistory()V

    .line 89
    sget-object v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear retry stack and counter, total counter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getTotalRetryCounter()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :cond_2
    invoke-interface {p4, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->searchAndPush(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)Z

    .line 93
    const-string/jumbo v2, "retry_total_counter"

    invoke-interface {p5, v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->removeKey(Ljava/lang/String;)V

    .line 94
    const-string v2, "last retry time"

    invoke-interface {p5, v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->removeKey(Ljava/lang/String;)V

    .line 95
    sget-object v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "steady state error screen should be displayed. saving retry instance, total counter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getTotalRetryCounter()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_0
    iget v2, p2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;->mFailEvent:I

    invoke-interface {p0, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    goto :goto_1

    .line 102
    :cond_3
    const-wide/16 v2, 0x0

    .line 104
    .local v2, "delay":J
    if-eqz v0, :cond_4

    .line 105
    invoke-static {p5}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->increaseTotalRetryCounter(Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 106
    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getTotalRetryCounter()I

    move-result v1

    .line 107
    invoke-interface {p5, v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getAdaptedRetrySchedule(I)I

    move-result v4

    int-to-long v2, v4

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {p4, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->saveRetryLastFailedTime(J)V

    .line 112
    :cond_4
    sget-object v4, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RETRY LOGIC::delay from the schedule: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "RETRY LOGIC::next retry Counter="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "RETRY LOGIC::retry event is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;->mRetryAttr:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-interface {p4, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->searchAndPush(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)Z

    .line 119
    iget-object v4, p2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;->mRetryAttr:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v5, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_USE_HEADER_VALUE:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    if-ne v4, v5, :cond_5

    .line 120
    if-lez p3, :cond_5

    .line 121
    int-to-long v4, p3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 124
    :cond_5
    iget v4, p2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;->mRetryEvent:I

    invoke-interface {p0, v4, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateDelayRetry(IJ)Z

    .line 127
    .end local v2    # "delay":J
    :goto_1
    return-void
.end method

.method public static handleErrorCode(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 6
    .param p0, "controller"    # Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .param p1, "api"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "iRetryStackAdapterHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;
    .param p3, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 23
    const-string v2, "default_error_type"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->handleErrorCode(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;ILcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 25
    return-void
.end method

.method private static handleErrorCode(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;ILcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 7
    .param p0, "controller"    # Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "retryAfter"    # I
    .param p4, "iRetryStackAdapterHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;
    .param p5, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 46
    sget-object v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retryAfter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    invoke-static {p1, p2, p5}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->findErrorConfig(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    move-result-object v0

    .line 49
    .local v0, "error":Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;
    if-nez v0, :cond_0

    .line 50
    const-string v1, "default_error_type"

    invoke-static {p1, v1, p5}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->findErrorConfig(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    move-result-object v0

    .line 54
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed API name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    if-eqz v0, :cond_1

    .line 56
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->handleError(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;ILcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 64
    .end local v0    # "error":Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;
    :cond_1
    return-void
.end method

.method public static handleErrorCode(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 6
    .param p0, "controller"    # Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "iRetryStackAdapterHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;
    .param p4, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 36
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->handleErrorCode(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;ILcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 37
    return-void
.end method

.method public static handleErrorHeader(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;ILcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 0
    .param p0, "controller"    # Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .param p1, "api"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "retryAfter"    # I
    .param p4, "iRetryStackAdapterHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;
    .param p5, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 30
    invoke-static/range {p0 .. p5}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->handleErrorCode(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;ILcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 31
    return-void
.end method

.method private static declared-synchronized increaseTotalRetryCounter(Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 2
    .param p0, "iCloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    const-class v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;

    monitor-enter v0

    .line 130
    :try_start_0
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->getTotalRetryCounter()I

    move-result v1

    .line 131
    .local v1, "totalCounter":I
    add-int/lit8 v1, v1, 0x1

    .line 132
    invoke-interface {p0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;->saveTotalRetryCounter(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit v0

    return-void

    .line 129
    .end local v1    # "totalCounter":I
    .end local p0    # "iCloudMessageManagerHelper":Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
