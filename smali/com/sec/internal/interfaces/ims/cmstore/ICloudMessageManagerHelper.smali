.class public interface abstract Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;
.super Ljava/lang/Object;
.source "ICloudMessageManagerHelper.java"


# virtual methods
.method public abstract bulkOpTreatSuccessIndividualResponse(I)Z
.end method

.method public abstract bulkOpTreatSuccessRequestResponse(I)Z
.end method

.method public abstract clearAll()V
.end method

.method public abstract clearOMASubscriptionChannelDuration()V
.end method

.method public abstract clearOMASubscriptionTime()V
.end method

.method public abstract getAdaptedRetrySchedule(I)I
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getControllerOfLastFailedApi()Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getFailedCallFlowTranslator()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getFaxApiVersion()Ljava/lang/String;
.end method

.method public abstract getFaxServerRoot()Ljava/lang/String;
.end method

.method public abstract getFaxServiceName()Ljava/lang/String;
.end method

.method public abstract getGcmTokenFromVsim()Ljava/lang/String;
.end method

.method public abstract getIsInitSyncIndicatorRequired()Z
.end method

.method public abstract getLastFailedApi()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxBulkDeleteEntry()I
.end method

.method public abstract getMaxRetryCounter()I
.end method

.method public abstract getMaxSearchEntry()I
.end method

.method public abstract getMessageAttributeRegistration()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNativeLine()Ljava/lang/String;
.end method

.method public abstract getNcHost()Ljava/lang/String;
.end method

.method public abstract getNmsHost()Ljava/lang/String;
.end method

.method public abstract getNotificaitonFormat()Lcom/sec/internal/omanetapi/common/data/NotificationFormat;
.end method

.method public abstract getOMAApiVersion()Ljava/lang/String;
.end method

.method public abstract getOMACallBackURL()Ljava/lang/String;
.end method

.method public abstract getOMAChannelResURL()Ljava/lang/String;
.end method

.method public abstract getOMAChannelURL()Ljava/lang/String;
.end method

.method public abstract getOMASubscriptionIndex()J
.end method

.method public abstract getOMASubscriptionResUrl()Ljava/lang/String;
.end method

.method public abstract getProtocol()Ljava/lang/String;
.end method

.method public abstract getStoreName()Ljava/lang/String;
.end method

.method public abstract getSuccessfullCallFlowTranslator()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getTotalRetryCounter()I
.end method

.method public abstract getTypeUsingMessageContext(Ljava/lang/String;)I
.end method

.method public abstract getUserCtn()Ljava/lang/String;
.end method

.method public abstract getUserTbs()Z
.end method

.method public abstract getUserTelCtn()Ljava/lang/String;
.end method

.method public abstract getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isBulkCreationEnabled()Z
.end method

.method public abstract isBulkDeleteEnabled()Z
.end method

.method public abstract isBulkUpdateEnabled()Z
.end method

.method public abstract isEnableATTHeader()Z
.end method

.method public abstract isEnableFolderIdInSearch()Z
.end method

.method public abstract isMidPrimaryIdForMmsCorrelationId()Z
.end method

.method public abstract isMultiLineSupported()Z
.end method

.method public abstract isPollingAllowed()Z
.end method

.method public abstract isPostMethodForBulkDelete()Z
.end method

.method public abstract isRetryEnabled()Z
.end method

.method public abstract isTokenRequestedFromProvision()Z
.end method

.method public abstract needToHandleSimSwap()Z
.end method

.method public abstract onOmaApiCredentialFailed(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V
.end method

.method public abstract onOmaSuccess(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
.end method

.method public abstract removeKey(Ljava/lang/String;)V
.end method

.method public abstract saveNcHost(Ljava/lang/String;)V
.end method

.method public abstract saveOMACallBackURL(Ljava/lang/String;)V
.end method

.method public abstract saveOMAChannelCreateTime(J)V
.end method

.method public abstract saveOMAChannelLifeTime(J)V
.end method

.method public abstract saveOMAChannelResURL(Ljava/lang/String;)V
.end method

.method public abstract saveOMAChannelURL(Ljava/lang/String;)V
.end method

.method public abstract saveOMASubscriptionChannelDuration(I)V
.end method

.method public abstract saveOMASubscriptionIndex(J)V
.end method

.method public abstract saveOMASubscriptionResUrl(Ljava/lang/String;)V
.end method

.method public abstract saveOMASubscriptionRestartToken(Ljava/lang/String;)V
.end method

.method public abstract saveOMASubscriptionTime(J)V
.end method

.method public abstract saveTotalRetryCounter(I)V
.end method

.method public abstract setDeviceConfigUsed(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract shouldClearCursorUponInitSyncDone()Z
.end method

.method public abstract shouldCorrectShortCode()Z
.end method

.method public abstract shouldStopInitSyncUponLowMemory()Z
.end method

.method public abstract shouldStopSendingAPIwhenNetworklost()Z
.end method
