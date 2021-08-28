.class public Lcom/sec/internal/ims/cmstore/RetryStackAdapterHelper;
.super Ljava/lang/Object;
.source "RetryStackAdapterHelper.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkRequestRetried(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)Z
    .locals 1
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 34
    invoke-static {}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getInstance()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->checkRequestRetried(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)Z

    move-result v0

    return v0
.end method

.method public clearRetryHistory()V
    .locals 1

    .line 44
    invoke-static {}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getInstance()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->clearRetryHistory()V

    .line 45
    return-void
.end method

.method public getLastFailedRequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .locals 1

    .line 13
    invoke-static {}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getInstance()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getLastFailedRequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 23
    invoke-static {}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getInstance()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isRetryTimesFinished()Z
    .locals 2

    .line 39
    invoke-static {}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getInstance()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->isRetryTimesFinished(Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Z

    move-result v0

    return v0
.end method

.method public pop()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .locals 1

    .line 18
    invoke-static {}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getInstance()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->pop()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v0

    return-object v0
.end method

.method public retryApi(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)V
    .locals 1
    .param p1, "retry"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .param p2, "callback"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p3, "cloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;
    .param p4, "retryStackAdapterHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    .line 29
    invoke-static {}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getInstance()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->retryApi(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)V

    .line 30
    return-void
.end method

.method public retryLastApi(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Z
    .locals 1
    .param p1, "callback"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .param p2, "cloudMessageManagerHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;
    .param p3, "retryStackAdapterHelper"    # Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    .line 60
    invoke-static {}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getInstance()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->retryLastApi(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Z

    move-result v0

    return v0
.end method

.method public saveRetryLastFailedTime(J)V
    .locals 3
    .param p1, "time"    # J

    .line 54
    invoke-static {}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getInstance()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->saveRetryLastFailedTime(J)V

    .line 55
    return-void
.end method

.method public searchAndPush(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)Z
    .locals 1
    .param p1, "request"    # Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 49
    invoke-static {}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getInstance()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->searchAndPush(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)Z

    move-result v0

    return v0
.end method
